// sqlstate.v contains all the error definitions as they are described by the
// SQLSTATE codes.
//
// The SQL standard is pretty flexible on the individual codes, so I've copied
// the relevant errors code from the definitions in PostgreSQL:
// https://www.postgresql.org/docs/9.4/errcodes-appendix.html

module vsql

// sqlstate_to_int converts the 5 character SQLSTATE code (such as "42P01") into
// an integer representation. The returned value can be converted back to its
// respective string by using sqlstate_from_int().
//
// If code is invalid the result will be unexpected.
pub fn sqlstate_to_int(code string) int {
	upper_code := code.to_upper()

	return sqlstate_chr(upper_code[0]) * 1679616 + sqlstate_chr(upper_code[1]) * 46656 +
		sqlstate_chr(upper_code[2]) * 1296 + sqlstate_chr(upper_code[3]) * 36 +
		sqlstate_chr(upper_code[4])
}

fn sqlstate_chr(ch u8) int {
	if ch <= `9` {
		return ch - u8(`0`)
	}

	return ch - u8(`A`) + 10
}

fn sqlstate_ord(ch int) u8 {
	if ch <= 9 {
		return u8(`0`) + u8(ch)
	}

	return u8(`A`) + (u8(ch) - 10)
}

pub fn sqlstate_from_int(code int) string {
	mut b := []u8{len: 5}

	mut i := 0
	mut left := code
	for m in [1679616, 46656, 1296, 36, 1] {
		x := int(left / m)
		b[i] = sqlstate_ord(x)
		left -= x * m
		i++
	}

	return b.bytestr()
}

struct SQLState {
	msg  string
	code int
}

fn (err SQLState) msg() string {
	return err.msg
}

fn (err SQLState) code() int {
	return err.code
}

// Numeric value out of range.
struct SQLState22003 {
	SQLState
}

fn sqlstate_22003(prec int, scale i16) IError {
	return SQLState22003{
		code: sqlstate_to_int('22003')
		msg: if prec == 0 && scale == 0 {
			'numeric out of range'
		} else {
			'numeric overflow: a field with precision $prec, scale $scale must round to an absolute value less than 10^$prec'
		}
	}
}

// Divide by zero.
struct SQLState22012 {
	SQLState
}

fn sqlstate_22012() IError {
	return SQLState22012{
		code: sqlstate_to_int('22012')
		msg: 'division by zero'
	}
}

// violates non-null constraint
struct SQLState23502 {
	SQLState
}

fn sqlstate_23502(msg string) IError {
	return SQLState23502{
		code: sqlstate_to_int('23502')
		msg: 'violates non-null constraint: $msg'
	}
}

// dependent objects still exist
struct SQLState2BP01 {
	SQLState
pub:
	object_name string
}

fn sqlstate_2bp01(object_name string) IError {
	return SQLState2BP01{
		code: sqlstate_to_int('2BP01')
		msg: 'dependent objects still exist on $object_name'
		object_name: object_name
	}
}

// schema name is invalid
struct SQLState3F000 {
	SQLState
pub:
	schema_name string
}

fn sqlstate_3f000(schema_name string) IError {
	return SQLState42P06{
		code: sqlstate_to_int('3F000')
		msg: 'invalid schema name: $schema_name'
		schema_name: schema_name
	}
}

// syntax error
struct SQLState42601 {
	SQLState
}

fn sqlstate_42601(message string) IError {
	return SQLState42601{
		code: sqlstate_to_int('42601')
		msg: 'syntax error: $message'
	}
}

// column does not exist
struct SQLState42703 {
	SQLState
pub:
	column_name string
}

fn sqlstate_42703(column_name string) IError {
	return SQLState42703{
		code: sqlstate_to_int('42703')
		msg: 'no such column: $column_name'
		column_name: column_name
	}
}

// data type mismatch
struct SQLState42804 {
	SQLState
	expected string
	actual   string
}

fn sqlstate_42804(msg string, expected string, actual string) IError {
	return SQLState42804{
		code: sqlstate_to_int('42804')
		msg: 'data type mismatch $msg: expected $expected but got $actual'
		expected: expected
		actual: actual
	}
}

// no such table
struct SQLState42P01 {
	SQLState
pub:
	table_name string
}

fn sqlstate_42p01(table_name string) IError {
	return SQLState42P01{
		code: sqlstate_to_int('42P01')
		msg: 'no such table: $table_name'
		table_name: table_name
	}
}

// duplicate schema
struct SQLState42P06 {
	SQLState
pub:
	schema_name string
}

fn sqlstate_42p06(schema_name string) IError {
	return SQLState42P06{
		code: sqlstate_to_int('42P06')
		msg: 'duplicate schema: $schema_name'
		schema_name: schema_name
	}
}

// duplicate table
struct SQLState42P07 {
	SQLState
pub:
	table_name string
}

fn sqlstate_42p07(table_name string) IError {
	return SQLState42P07{
		code: sqlstate_to_int('42P07')
		msg: 'duplicate table: $table_name'
		table_name: table_name
	}
}

// No such function
struct SQLState42883 {
	SQLState
pub:
	function_name string
	arg_types     []Type
}

fn sqlstate_42883(function_name string, arg_types []Type) IError {
	return SQLState42883{
		code: sqlstate_to_int('42883')
		msg: 'function does not exist: ${function_name}(${arg_types.map(it.str()).join(', ')})'
		function_name: function_name
		arg_types: arg_types
	}
}

// Undefined parameter
struct SQLState42P02 {
	SQLState
pub:
	parameter_name string
}

fn sqlstate_42p02(parameter_name string) IError {
	return SQLState42P02{
		code: sqlstate_to_int('42P02')
		msg: 'parameter does not exist: $parameter_name'
		parameter_name: parameter_name
	}
}

// invalid transaction state: active sql transaction
struct SQLState25001 {
	SQLState
}

fn sqlstate_25001() IError {
	return SQLState25001{
		code: sqlstate_to_int('25001')
		msg: 'invalid transaction state: active sql transaction'
	}
}

// invalid transaction termination
struct SQLState2D000 {
	SQLState
}

fn sqlstate_2d000() IError {
	return SQLState2D000{
		code: sqlstate_to_int('2D000')
		msg: 'invalid transaction termination'
	}
}

// invalid transaction initiation
struct SQLState0B000 {
	SQLState
}

fn sqlstate_0b000(msg string) IError {
	return SQLState0B000{
		code: sqlstate_to_int('0B000')
		msg: 'invalid transaction initiation: $msg'
	}
}

// serialization failure
struct SQLState40001 {
	SQLState
}

fn sqlstate_40001(message string) IError {
	return SQLState40001{
		code: sqlstate_to_int('40001')
		msg: 'serialization failure: $message'
	}
}

// in failed sql transaction
struct SQLState25P02 {
	SQLState
}

fn sqlstate_25p02() IError {
	return SQLState25P02{
		code: sqlstate_to_int('25P02')
		msg: 'transaction is aborted, commands ignored until end of transaction block'
	}
}
