// storage.v acts as the gateway for common operations against the raw objects
// on from the pager, such as fetching tables and rows.
//
// Storage is maintained over individual operations on the file because it
// caches the schema.

module vsql

import os
import rand

enum TransactionState {
	not_active
	// Whilst in a transaction (specifically START TRANSACTION, not an implicit
	// transaction). This is important to stop a nested transaction from
	// starting or closing an unstarted transaction.
	active
	// If transaction_state is .aborted, all SQL statements will return a
	// SQLSTATE 25P02 until a COMMIT or ROLLBACK is issued. Also, in this state
	// a COMMIT will be treated as a ROLLBACK.
	aborted
}

struct Storage {
mut:
	header Header
	// btree is replaced for each operation (because it needs a new pager for
	// each operation).
	btree Btree
	// We keep the table definitions in memory because they are needed for most
	// operations (including read and writing rows). All tables must be loaded
	// when the database is opened.
	tables []Table
	// file is opened, flushed and closed with each operation against the file.
	file os.File
	// See TransactionState for docs.
	transaction_state TransactionState
	// transaction_id is the current active transaction ID, or zero if there is
	// no active transaction. If there is no active transaction, each statement
	// will be given an implicit transaction.
	transaction_id int
	// transaction_pages contains all the page numbers that have been modified
	// during this transaction. This is important for COMMIT and ROLLBACK to
	// revisit pages that need to be cleaned up or frozen.
	transaction_pages map[int]bool
	// Like the tables we keep the schemas in memory.
	schemas map[string]Schema
}

fn new_storage() Storage {
	return Storage{}
}

fn (mut f Storage) open(path string) ! {
	f.file = os.open_file(path, 'r+') or { return error('unable to open $path: $err') }

	header := read_header(mut f.file)!
	println('read version ${header.schema_version} (vs ${f.header.schema_version})')

	f.btree = new_btree(new_file_pager(mut f.file, header.page_size, header.root_page)!,
		header.page_size)

	// Avoid reloading the schema if it hasn't changed.
	if header.schema_version == f.header.schema_version {
		println('schema unchanged')
		f.header = header
		return
	}
	println('schema CHANGED')
	f.header = header

	// The schema must be read in an isolation block, which may or may not
	// belong to an active transaction.
	f.isolation_start()!
	defer {
		f.isolation_end() or { panic(err) }
	}

	f.tables = []Table{}
	for object in f.btree.new_range_iterator('T'.bytes(), 'U'.bytes()) {
		table := new_table_from_bytes(object.value, object.tid)
		f.tables << table
	}

	f.schemas = map[string]Schema{}
	for object in f.btree.new_range_iterator('S'.bytes(), 'T'.bytes()) {
		if object_is_visible(object.tid, object.xid, f.transaction_id, mut f.header.active_transaction_ids) {
			schema := new_schema_from_bytes(object.value, object.tid)
			f.schemas[schema.name] = schema
		}
	}
}

fn (mut f Storage) schema_changed() {
	// We don't need to read the header again because write operations on a file
	// are exclusive so the version (and the header itself) we already have can
	// be incremented.
	f.header.schema_version = rand.int()
}

fn (mut f Storage) close() ! {
	// Before closing the connection we always write back the page header in
	// case the schema_version or root_page have changed.
	//
	// TODO(elliotchance): We should be smarter about only writing this when we
	//  need to.
	f.header.root_page = f.btree.pager.root_page()

	write_header(mut f.file, f.header)!
	println('wrote version ${f.header.schema_version}')

	f.file.flush()
	f.file.close()
}

fn (mut f Storage) get_table_by_name(table_name string) !Table {
	for _, table in f.tables {
		if table.name == table_name {
			return table
		}
	}

	return sqlstate_42p01(table_name)
}

fn (mut f Storage) get_table_by_id(table_id []u8) Table {
	for _, table in f.tables {
		if table.id == table_id {
			return table
		}
	}

	// This should not be possible.
	return Table{}
}

fn (mut f Storage) create_table(table_name string, columns Columns, primary_key []string) ! {
	f.isolation_start()!
	defer {
		f.isolation_end() or { panic(err) }
	}

	table := new_table(f.transaction_id, table_name, columns, primary_key, false)

	obj := new_page_object('T${table.id.bytestr()}'.bytes(), f.transaction_id, 0, table.bytes())
	page_number := f.btree.add(obj)!
	f.transaction_pages[page_number] = true

	f.tables << table
	f.schema_changed()
}

fn (mut f Storage) create_schema(schema_name string) ! {
	f.isolation_start()!
	defer {
		f.isolation_end() or { panic(err) }
	}

	schema := Schema{f.transaction_id, schema_name}

	obj := new_page_object('S$schema_name'.bytes(), f.transaction_id, 0, schema.bytes())
	page_number := f.btree.add(obj)!
	f.transaction_pages[page_number] = true

	f.schemas[schema_name] = schema
	f.schema_changed()
}

fn (mut f Storage) delete_table(table_id []u8, tid int) ! {
	f.isolation_start()!
	defer {
		f.isolation_end() or { panic(err) }
	}

	page_number := f.btree.expire('T${table_id.bytestr()}'.bytes(), tid, f.transaction_id)!
	f.transaction_pages[page_number] = true

	for i, table in f.tables {
		if table.id == table_id {
			f.tables.delete(i)
			break
		}
	}

	f.schema_changed()
}

fn (mut f Storage) delete_schema(schema_name string, tid int) ! {
	f.isolation_start()!
	defer {
		f.isolation_end() or { panic(err) }
	}

	page_number := f.btree.expire('S$schema_name'.bytes(), tid, f.transaction_id)!
	f.transaction_pages[page_number] = true

	f.schemas.delete(schema_name)
	f.schema_changed()
}

fn (mut f Storage) delete_row(table Table, mut row Row) ! {
	f.isolation_start()!
	defer {
		f.isolation_end() or { panic(err) }
	}

	page_number := f.btree.expire(row.object_key(table)!, row.tid, f.transaction_id)!
	f.transaction_pages[page_number] = true
}

fn (mut f Storage) write_row(mut r Row, t Table) ! {
	f.isolation_start()!
	defer {
		f.isolation_end() or { panic(err) }
	}

	obj := new_page_object(r.object_key(t)!, f.transaction_id, 0, r.bytes(t))
	page_number := f.btree.add(obj)!
	f.transaction_pages[page_number] = true
}

fn (mut f Storage) update_row(mut old Row, mut new Row, t Table) ! {
	f.isolation_start()!
	defer {
		f.isolation_end() or { panic(err) }
	}

	old_obj := new_page_object(old.object_key(t)!, old.tid, 0, old.bytes(t))
	new_obj := new_page_object(new.object_key(t)!, f.transaction_id, 0, new.bytes(t))
	for page_number in f.btree.update(old_obj, new_obj, f.transaction_id)! {
		f.transaction_pages[page_number] = true
	}
}

fn (mut f Storage) read_rows(table Table, prefix_table_name bool) ![]Row {
	f.isolation_start()!
	defer {
		f.isolation_end() or { panic(err) }
	}

	mut rows := []Row{}

	// ';' = ':' + 1
	for object in f.btree.new_range_iterator('R${table.id.bytestr()}:'.bytes(), 'R${table.id.bytestr()};'.bytes()) {
		if object_is_visible(object.tid, object.xid, f.transaction_id, mut f.header.active_transaction_ids) {
			mut prefixed_table_name := ''
			if prefix_table_name {
				prefixed_table_name = table.name
			}
			rows << new_row_from_bytes(table, object.value, object.tid, prefixed_table_name)
		}
	}

	return rows
}

// isolation_start signals the start of an operation that shall be atomic until
// isolation_end is invoked. If there is no active transaction, a new
// transaction will be created. Otherwise, this isolation block will be part of
// the current transaction.
fn (mut f Storage) isolation_start() ! {
	match f.transaction_state {
		.not_active {
			// Fallthrough to the logic below.
		}
		.active {
			return
		}
		.aborted {
			return sqlstate_25p02()
		}
	}

	f.header.transaction_id++

	f.transaction_id = f.header.transaction_id
	f.header.active_transaction_ids.add(f.transaction_id)!
}

fn (mut f Storage) transaction_aborted() {
	if f.transaction_state == .active {
		f.transaction_state = .aborted
	}
}

// isolation_end must be called at some point after isolation_start to signal
// the end of the atomic blocks. At the moment blocks cannot be nested so the
// state of the active or implicit transaction state is expected to be
// maintained.
fn (mut f Storage) isolation_end() ! {
	match f.transaction_state {
		.not_active {
			// Fallthrough to logic below.
		}
		.active, .aborted {
			// Do nothing. COMMIT, ROLLBACK or some other transaction terminator
			// will take care of this later.
			return
		}
	}

	// Revist any remaining pages to clean out any expired rows.
	for page_number, _ in f.transaction_pages {
		mut page := f.btree.pager.fetch_page(page_number)!
		for obj in page.objects() {
			// Only remove the objects expired in this transaction.
			if obj.xid == f.transaction_id {
				page.delete(obj.key, obj.tid)
			}
		}

		f.btree.pager.store_page(page_number, page)!
	}

	f.transaction_pages = map[int]bool{}

	f.header.active_transaction_ids.remove(f.transaction_id)
}
