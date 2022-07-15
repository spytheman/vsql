// cast.v handles the conversion of a value from one type to another.

module vsql

// TODO(elliotchance): This should be rewritten to follow the table in
//  <cast specification>.

fn cast(msg string, v Value, to Type) ?Value {
	// For now, all NULLs are allowed to be converted to any other NULL. This
	// should not technically be true, but it will do for now.
	if v.is_null {
		return new_null_value(to.typ)
	}

	match v.typ.typ {
		.is_boolean {
			match to.typ {
				.is_boolean {
					return v
				}
				else {}
			}
		}
		.is_bigint {
			match to.typ {
				.is_smallint {
					if v.int_value() < -32768 || v.int_value() > 32767 {
						return sqlstate_22003(0, 0)
					}

					return v
				}
				.is_integer {
					if v.int_value() < -2147483648 || v.int_value() > 2147483647 {
						return sqlstate_22003(0, 0)
					}

					return v
				}
				.is_bigint {
					return v
				}
				.is_double_precision, .is_real {
					return new_double_precision_value(v.int_value())
				}
				else {}
			}
		}
		.is_character {
			match to.typ {
				.is_character, .is_varchar {
					return v
				}
				else {}
			}
		}
		.is_double_precision {
			match to.typ {
				.is_bigint, .is_integer, .is_smallint {
					return new_bigint_value(i64(v.f64_value()))
				}
				.is_double_precision, .is_real {
					return v
				}
				.is_numeric {
					return new_numeric_value(new_numeric_from_string(v.str()))
				}
				else {}
			}
		}
		.is_integer {
			match to.typ {
				.is_bigint, .is_integer, .is_smallint {
					return v
				}
				.is_double_precision, .is_real {
					return new_double_precision_value(v.int_value())
				}
				else {}
			}
		}
		.is_real {
			match to.typ {
				.is_bigint, .is_integer, .is_smallint {
					return new_bigint_value(i64(v.f64_value()))
				}
				.is_double_precision, .is_real {
					return v
				}
				else {}
			}
		}
		.is_smallint {
			match to.typ {
				.is_bigint, .is_integer, .is_smallint {
					return v
				}
				.is_double_precision, .is_real {
					return new_double_precision_value(v.int_value())
				}
				else {}
			}
		}
		.is_varchar {
			match to.typ {
				.is_varchar, .is_character {
					return v
				}
				else {}
			}
		}
		.is_date {
			match to.typ {
				.is_date {
					return v
				}
				else {}
			}
		}
		.is_timestamp_with_time_zone {
			match to.typ {
				.is_timestamp_with_time_zone {
					// We cannot lower the precision of the timestamp without an
					// explicit CAST.
					if to.size >= v.typ.size {
						return v
					}
				}
				else {}
			}
		}
		.is_timestamp_without_time_zone {
			match to.typ {
				.is_timestamp_without_time_zone {
					// We cannot lower the precision of the timestamp without an
					// explicit CAST.
					if to.size >= v.typ.size {
						return v
					}
				}
				else {}
			}
		}
		.is_time_with_time_zone {
			match to.typ {
				.is_time_with_time_zone {
					return v
				}
				else {}
			}
		}
		.is_time_without_time_zone {
			match to.typ {
				.is_time_without_time_zone {
					return v
				}
				else {}
			}
		}
		.is_decimal {
			match to.typ {
				.is_decimal {
					return v
				}
				else {}
			}
		}
		.is_numeric {
			match to.typ {
				.is_numeric {
					// When converting NUMERIC(p,s) to a different NUMERIC(p,s)
					// we cannot allow a loss on the whole number part, but we
					// do allow rounding if the scale changes.
					if to.size > 0 {
						if v.numeric_value().whole_digits() > (to.size - to.scale) {
							return sqlstate_22003(to.size, to.scale)
						}

						// TODO(elliotchance): Avoid creating a new value if it
						//  doesn't need to be rounded.
						return new_numeric_value(v.numeric_value().round(to.scale))
					}

					return v
				}
				.is_double_precision {
					if to.scale == 0 {
						return new_double_precision_value(v.str().f64())
					}
				}
				else {}
			}
		}
	}

	return sqlstate_42804(msg, to.str(), v.typ.str())
}
