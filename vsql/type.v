// type.v contains internal definitions and utilities for SQL data types.

module vsql

struct Type {
mut:
	// TODO(elliotchance): Make these non-mutable.
	typ      SQLType
	size     int  // the size (or precision) specified for the type
	scale    i16  // the scale is only for numeric types
	not_null bool // NOT NULL?
	// If is_coercible is true the value comes from an ambiguous type (like a
	// numerical constant) that can be corerced to another type if needed in an
	// expression.
	is_coercible bool
}

enum SQLType {
	is_bigint // BIGINT
	is_boolean // BOOLEAN
	is_character // CHARACTER(n), CHAR(n), CHARACTER and CHAR
	is_double_precision // DOUBLE PRECISION, FLOAT and FLOAT(n)
	is_integer // INTEGER and INT
	is_real // REAL
	is_smallint // SMALLINT
	is_varchar // CHARACTER VARYING, CHAR VARYING and VARCHAR
	is_date // DATE
	is_time_without_time_zone // TIME, TIME WITHOUT TIME ZONE
	is_time_with_time_zone // TIME WITH TIME ZONE
	is_timestamp_without_time_zone // TIMESTAMP, TIMESTAMP WITHOUT TIME ZONE
	is_timestamp_with_time_zone // TIMESTAMP WITH TIME ZONE
	is_decimal // DECIMAL
	is_numeric // NUMERIC
}

fn new_type(name string, size int, scale i16) Type {
	name_without_size := name.split('(')[0]

	return match name_without_size {
		'BIGINT' {
			Type{.is_bigint, 0, 0, false, false}
		}
		'BOOLEAN' {
			Type{.is_boolean, 0, 0, false, false}
		}
		'CHARACTER VARYING', 'CHAR VARYING', 'VARCHAR' {
			Type{.is_varchar, size, 0, false, false}
		}
		'CHARACTER', 'CHAR' {
			Type{.is_character, size, 0, false, false}
		}
		'DOUBLE PRECISION', 'FLOAT' {
			Type{.is_double_precision, 0, 0, false, false}
		}
		'REAL' {
			Type{.is_real, 0, 0, false, false}
		}
		'INT', 'INTEGER' {
			Type{.is_integer, 0, 0, false, false}
		}
		'SMALLINT' {
			Type{.is_smallint, 0, 0, false, false}
		}
		'DATE' {
			Type{.is_date, 0, 0, false, false}
		}
		'TIME', 'TIME WITHOUT TIME ZONE' {
			Type{.is_time_without_time_zone, size, 0, false, false}
		}
		'TIME WITH TIME ZONE' {
			Type{.is_time_with_time_zone, size, 0, false, false}
		}
		'TIMESTAMP', 'TIMESTAMP WITHOUT TIME ZONE' {
			Type{.is_timestamp_without_time_zone, size, 0, false, false}
		}
		'TIMESTAMP WITH TIME ZONE' {
			Type{.is_timestamp_with_time_zone, size, 0, false, false}
		}
		'DECIMAL' {
			Type{.is_decimal, size, scale, false, false}
		}
		'NUMERIC' {
			Type{.is_numeric, size, scale, false, false}
		}
		else {
			panic(name_without_size)
			Type{}
		}
	}
}

fn (t Type) str() string {
	mut s := match t.typ {
		.is_bigint {
			'BIGINT'
		}
		.is_boolean {
			'BOOLEAN'
		}
		.is_character {
			if t.size > 0 {
				'CHARACTER($t.size)'
			} else {
				'CHARACTER'
			}
		}
		.is_double_precision {
			'DOUBLE PRECISION'
		}
		.is_integer {
			'INTEGER'
		}
		.is_real {
			'REAL'
		}
		.is_smallint {
			'SMALLINT'
		}
		.is_varchar {
			// TODO(elliotchance): Is this a bug to allow no size for CHARACTER
			//  VARYING? Need to check standard.
			if t.size > 0 {
				'CHARACTER VARYING($t.size)'
			} else {
				'CHARACTER VARYING'
			}
		}
		.is_date {
			'DATE'
		}
		.is_time_without_time_zone {
			'TIME($t.size) WITHOUT TIME ZONE'
		}
		.is_time_with_time_zone {
			'TIME($t.size) WITH TIME ZONE'
		}
		.is_timestamp_without_time_zone {
			'TIMESTAMP($t.size) WITHOUT TIME ZONE'
		}
		.is_timestamp_with_time_zone {
			'TIMESTAMP($t.size) WITH TIME ZONE'
		}
		.is_decimal {
			decimal_type_str(t.size, t.scale)
		}
		.is_numeric {
			numeric_type_str(t.size, t.scale)
		}
	}

	if t.not_null {
		s += ' NOT NULL'
	}

	return s
}

// fn (t Type) order() int {
// 	return match {
// 		.is_boolean { 1 }

// 		.is_smallint { 1 }
// 		.is_integer { 2 }
// 		.is_bigint { 3 }
// 		.is_real { 4 }
// 		.is_double_precision { 5 }
// 		.is_decimal { 6 }
// 		.is_numeric { 7 }

// 		.is_character { 1 }
// 		.is_varchar { 2 }

// 		.is_time_without_time_zone { 1 }
// 		.is_time_with_time_zone { 2 }

// 		.is_date { 1 }
// 		.is_timestamp_without_time_zone { 2 }
// 		.is_timestamp_with_time_zone { 3 }
// 	}

// 	return s
// }

fn (t Type) uses_int() bool {
	return match t.typ {
		.is_boolean, .is_bigint, .is_smallint, .is_integer {
			true
		}
		.is_varchar, .is_character, .is_double_precision, .is_real, .is_date,
		.is_time_with_time_zone, .is_time_without_time_zone, .is_timestamp_with_time_zone,
		.is_timestamp_without_time_zone, .is_numeric, .is_decimal {
			false
		}
	}
}

fn (t Type) uses_f64() bool {
	return match t.typ {
		.is_double_precision, .is_real, .is_date, .is_time_with_time_zone,
		.is_time_without_time_zone, .is_timestamp_with_time_zone, .is_timestamp_without_time_zone {
			true
		}
		.is_boolean, .is_varchar, .is_character, .is_bigint, .is_smallint, .is_integer,
		.is_decimal, .is_numeric {
			false
		}
	}
}

fn (t Type) uses_string() bool {
	return match t.typ {
		.is_boolean, .is_double_precision, .is_bigint, .is_real, .is_smallint, .is_integer,
		.is_date, .is_time_with_time_zone, .is_time_without_time_zone,
		.is_timestamp_with_time_zone, .is_timestamp_without_time_zone, .is_decimal, .is_numeric {
			false
		}
		.is_varchar, .is_character {
			true
		}
	}
}

fn (t Type) uses_time() bool {
	return match t.typ {
		.is_boolean, .is_double_precision, .is_bigint, .is_real, .is_smallint, .is_integer,
		.is_varchar, .is_character, .is_decimal, .is_numeric {
			false
		}
		.is_date, .is_time_with_time_zone, .is_time_without_time_zone,
		.is_timestamp_with_time_zone, .is_timestamp_without_time_zone {
			true
		}
	}
}

fn (t Type) uses_numeric() bool {
	return match t.typ {
		.is_boolean, .is_double_precision, .is_bigint, .is_real, .is_smallint, .is_integer,
		.is_varchar, .is_character, .is_date, .is_time_with_time_zone, .is_time_without_time_zone,
		.is_timestamp_with_time_zone, .is_timestamp_without_time_zone {
			false
		}
		.is_decimal, .is_numeric {
			true
		}
	}
}

fn (t Type) number() u8 {
	return match t.typ {
		.is_boolean { 0 }
		.is_bigint { 1 }
		.is_double_precision { 2 }
		.is_integer { 3 }
		.is_real { 4 }
		.is_smallint { 5 }
		.is_varchar { 6 }
		.is_character { 7 }
		.is_date { 8 }
		.is_time_with_time_zone { 9 }
		.is_time_without_time_zone { 10 }
		.is_timestamp_with_time_zone { 11 }
		.is_timestamp_without_time_zone { 12 }
		.is_decimal { 13 }
		.is_numeric { 14 }
	}
}

fn type_from_number(number u8, size int, scale i16) Type {
	return new_type(match number {
		0 { 'BOOLEAN' }
		1 { 'BIGINT' }
		2 { 'DOUBLE PRECISION' }
		3 { 'INTEGER' }
		4 { 'REAL' }
		5 { 'SMALLINT' }
		6 { 'CHARACTER VARYING($size)' }
		7 { 'CHARACTER' }
		8 { 'DATE' }
		9 { 'TIME($size) WITH TIME ZONE' }
		10 { 'TIME($size) WITHOUT TIME ZONE' }
		11 { 'TIMESTAMP($size) WITH TIME ZONE' }
		12 { 'TIMESTAMP($size) WITHOUT TIME ZONE' }
		13 { decimal_type_str(size, scale) }
		14 { numeric_type_str(size, scale) }
		else { panic(number) }
	}, size, scale)
}

fn decimal_type_str(size int, scale i16) string {
	if size == 0 {
		return 'DECIMAL'
	}

	if scale == 0 {
		return 'DECIMAL($size)'
	}

	return 'DECIMAL($size, $scale)'
}

fn numeric_type_str(size int, scale i16) string {
	if size == 0 {
		return 'NUMERIC'
	}

	if scale == 0 {
		return 'NUMERIC($size)'
	}

	return 'NUMERIC($size, $scale)'
}
