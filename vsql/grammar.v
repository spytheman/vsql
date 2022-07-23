// grammar.v is generated. DO NOT EDIT.
// It can be regenerated from the grammar.bnf with:
//   python generate-grammar.py

module vsql

type EarleyValue = BetweenExpr
	| ComparisonPredicatePart2
	| Correlation
	| CreateTableStmt
	| DerivedColumn
	| Expr
	| Identifier
	| InsertStmt
	| LikeExpr
	| QualifiedAsteriskExpr
	| QualifiedJoin
	| QueryExpression
	| SelectList
	| SimilarExpr
	| SimpleTable
	| SortSpecification
	| Stmt
	| TableElement
	| TableExpression
	| TablePrimary
	| TablePrimaryBody
	| TableReference
	| Type
	| Value
	| []Expr
	| []Identifier
	| []SortSpecification
	| []TableElement
	| bool
	| int
	| map[string]Expr
	| string

fn get_grammar() map[string]EarleyRule {
	mut rules := map[string]EarleyRule{}

	mut rule_absolute_value_expression_1_ := &EarleyRule{
		name: '<absolute value expression: 1>'
	}
	mut rule_absolute_value_expression_ := &EarleyRule{
		name: '<absolute value expression>'
	}
	mut rule_actual_identifier_ := &EarleyRule{
		name: '<actual identifier>'
	}
	mut rule_aggregate_function_1_ := &EarleyRule{
		name: '<aggregate function: 1>'
	}
	mut rule_aggregate_function_ := &EarleyRule{
		name: '<aggregate function>'
	}
	mut rule_approximate_numeric_type_1_ := &EarleyRule{
		name: '<approximate numeric type: 1>'
	}
	mut rule_approximate_numeric_type_2_ := &EarleyRule{
		name: '<approximate numeric type: 2>'
	}
	mut rule_approximate_numeric_type_3_ := &EarleyRule{
		name: '<approximate numeric type: 3>'
	}
	mut rule_approximate_numeric_type_4_ := &EarleyRule{
		name: '<approximate numeric type: 4>'
	}
	mut rule_approximate_numeric_type_ := &EarleyRule{
		name: '<approximate numeric type>'
	}
	mut rule_as_clause_1_ := &EarleyRule{
		name: '<as clause: 1>'
	}
	mut rule_as_clause_ := &EarleyRule{
		name: '<as clause>'
	}
	mut rule_asterisk_ := &EarleyRule{
		name: '<asterisk>'
	}
	mut rule_asterisked_identifier_chain_ := &EarleyRule{
		name: '<asterisked identifier chain>'
	}
	mut rule_asterisked_identifier_ := &EarleyRule{
		name: '<asterisked identifier>'
	}
	mut rule_basic_identifier_chain_ := &EarleyRule{
		name: '<basic identifier chain>'
	}
	mut rule_between_predicate_part_1_1_ := &EarleyRule{
		name: '<between predicate part 1: 1>'
	}
	mut rule_between_predicate_part_1_2_ := &EarleyRule{
		name: '<between predicate part 1: 2>'
	}
	mut rule_between_predicate_part_1_ := &EarleyRule{
		name: '<between predicate part 1>'
	}
	mut rule_between_predicate_part_2_1_ := &EarleyRule{
		name: '<between predicate part 2: 1>'
	}
	mut rule_between_predicate_part_2_2_ := &EarleyRule{
		name: '<between predicate part 2: 2>'
	}
	mut rule_between_predicate_part_2_ := &EarleyRule{
		name: '<between predicate part 2>'
	}
	mut rule_between_predicate_1_ := &EarleyRule{
		name: '<between predicate: 1>'
	}
	mut rule_between_predicate_ := &EarleyRule{
		name: '<between predicate>'
	}
	mut rule_boolean_factor_2_ := &EarleyRule{
		name: '<boolean factor: 2>'
	}
	mut rule_boolean_factor_ := &EarleyRule{
		name: '<boolean factor>'
	}
	mut rule_boolean_literal_1_ := &EarleyRule{
		name: '<boolean literal: 1>'
	}
	mut rule_boolean_literal_2_ := &EarleyRule{
		name: '<boolean literal: 2>'
	}
	mut rule_boolean_literal_3_ := &EarleyRule{
		name: '<boolean literal: 3>'
	}
	mut rule_boolean_literal_ := &EarleyRule{
		name: '<boolean literal>'
	}
	mut rule_boolean_predicand_ := &EarleyRule{
		name: '<boolean predicand>'
	}
	mut rule_boolean_primary_ := &EarleyRule{
		name: '<boolean primary>'
	}
	mut rule_boolean_term_2_ := &EarleyRule{
		name: '<boolean term: 2>'
	}
	mut rule_boolean_term_ := &EarleyRule{
		name: '<boolean term>'
	}
	mut rule_boolean_test_2_ := &EarleyRule{
		name: '<boolean test: 2>'
	}
	mut rule_boolean_test_3_ := &EarleyRule{
		name: '<boolean test: 3>'
	}
	mut rule_boolean_test_ := &EarleyRule{
		name: '<boolean test>'
	}
	mut rule_boolean_type_1_ := &EarleyRule{
		name: '<boolean type: 1>'
	}
	mut rule_boolean_type_ := &EarleyRule{
		name: '<boolean type>'
	}
	mut rule_boolean_value_expression_2_ := &EarleyRule{
		name: '<boolean value expression: 2>'
	}
	mut rule_boolean_value_expression_ := &EarleyRule{
		name: '<boolean value expression>'
	}
	mut rule_ceiling_function_1_ := &EarleyRule{
		name: '<ceiling function: 1>'
	}
	mut rule_ceiling_function_2_ := &EarleyRule{
		name: '<ceiling function: 2>'
	}
	mut rule_ceiling_function_ := &EarleyRule{
		name: '<ceiling function>'
	}
	mut rule_char_length_expression_1_ := &EarleyRule{
		name: '<char length expression: 1>'
	}
	mut rule_char_length_expression_2_ := &EarleyRule{
		name: '<char length expression: 2>'
	}
	mut rule_char_length_expression_ := &EarleyRule{
		name: '<char length expression>'
	}
	mut rule_char_length_units_ := &EarleyRule{
		name: '<char length units>'
	}
	mut rule_character_factor_ := &EarleyRule{
		name: '<character factor>'
	}
	mut rule_character_length_ := &EarleyRule{
		name: '<character length>'
	}
	mut rule_character_like_predicate_part_2_1_ := &EarleyRule{
		name: '<character like predicate part 2: 1>'
	}
	mut rule_character_like_predicate_part_2_2_ := &EarleyRule{
		name: '<character like predicate part 2: 2>'
	}
	mut rule_character_like_predicate_part_2_ := &EarleyRule{
		name: '<character like predicate part 2>'
	}
	mut rule_character_like_predicate_1_ := &EarleyRule{
		name: '<character like predicate: 1>'
	}
	mut rule_character_like_predicate_ := &EarleyRule{
		name: '<character like predicate>'
	}
	mut rule_character_pattern_ := &EarleyRule{
		name: '<character pattern>'
	}
	mut rule_character_position_expression_1_ := &EarleyRule{
		name: '<character position expression: 1>'
	}
	mut rule_character_position_expression_ := &EarleyRule{
		name: '<character position expression>'
	}
	mut rule_character_primary_ := &EarleyRule{
		name: '<character primary>'
	}
	mut rule_character_string_literal_ := &EarleyRule{
		name: '<character string literal>'
	}
	mut rule_character_string_type_1_ := &EarleyRule{
		name: '<character string type: 1>'
	}
	mut rule_character_string_type_2_ := &EarleyRule{
		name: '<character string type: 2>'
	}
	mut rule_character_string_type_3_ := &EarleyRule{
		name: '<character string type: 3>'
	}
	mut rule_character_string_type_4_ := &EarleyRule{
		name: '<character string type: 4>'
	}
	mut rule_character_string_type_5_ := &EarleyRule{
		name: '<character string type: 5>'
	}
	mut rule_character_string_type_6_ := &EarleyRule{
		name: '<character string type: 6>'
	}
	mut rule_character_string_type_7_ := &EarleyRule{
		name: '<character string type: 7>'
	}
	mut rule_character_string_type_ := &EarleyRule{
		name: '<character string type>'
	}
	mut rule_character_substring_function_1_ := &EarleyRule{
		name: '<character substring function: 1>'
	}
	mut rule_character_substring_function_2_ := &EarleyRule{
		name: '<character substring function: 2>'
	}
	mut rule_character_substring_function_3_ := &EarleyRule{
		name: '<character substring function: 3>'
	}
	mut rule_character_substring_function_4_ := &EarleyRule{
		name: '<character substring function: 4>'
	}
	mut rule_character_substring_function_ := &EarleyRule{
		name: '<character substring function>'
	}
	mut rule_character_value_expression_1_ := &EarleyRule{
		name: '<character value expression 1>'
	}
	mut rule_character_value_expression_2_ := &EarleyRule{
		name: '<character value expression 2>'
	}
	mut rule_character_value_expression_ := &EarleyRule{
		name: '<character value expression>'
	}
	mut rule_character_value_function_ := &EarleyRule{
		name: '<character value function>'
	}
	mut rule_colon_ := &EarleyRule{
		name: '<colon>'
	}
	mut rule_column_constraint_definition_ := &EarleyRule{
		name: '<column constraint definition>'
	}
	mut rule_column_constraint_1_ := &EarleyRule{
		name: '<column constraint: 1>'
	}
	mut rule_column_constraint_ := &EarleyRule{
		name: '<column constraint>'
	}
	mut rule_column_definition_1_ := &EarleyRule{
		name: '<column definition: 1>'
	}
	mut rule_column_definition_2_ := &EarleyRule{
		name: '<column definition: 2>'
	}
	mut rule_column_definition_ := &EarleyRule{
		name: '<column definition>'
	}
	mut rule_column_name_list_1_ := &EarleyRule{
		name: '<column name list: 1>'
	}
	mut rule_column_name_list_2_ := &EarleyRule{
		name: '<column name list: 2>'
	}
	mut rule_column_name_list_ := &EarleyRule{
		name: '<column name list>'
	}
	mut rule_column_name_ := &EarleyRule{
		name: '<column name>'
	}
	mut rule_column_reference_ := &EarleyRule{
		name: '<column reference>'
	}
	mut rule_comma_ := &EarleyRule{
		name: '<comma>'
	}
	mut rule_commit_statement_1_ := &EarleyRule{
		name: '<commit statement: 1>'
	}
	mut rule_commit_statement_2_ := &EarleyRule{
		name: '<commit statement: 2>'
	}
	mut rule_commit_statement_ := &EarleyRule{
		name: '<commit statement>'
	}
	mut rule_common_logarithm_1_ := &EarleyRule{
		name: '<common logarithm: 1>'
	}
	mut rule_common_logarithm_ := &EarleyRule{
		name: '<common logarithm>'
	}
	mut rule_common_value_expression_ := &EarleyRule{
		name: '<common value expression>'
	}
	mut rule_comp_op_ := &EarleyRule{
		name: '<comp op>'
	}
	mut rule_comparison_predicate_part_2_1_ := &EarleyRule{
		name: '<comparison predicate part 2: 1>'
	}
	mut rule_comparison_predicate_part_2_ := &EarleyRule{
		name: '<comparison predicate part 2>'
	}
	mut rule_comparison_predicate_1_ := &EarleyRule{
		name: '<comparison predicate: 1>'
	}
	mut rule_comparison_predicate_ := &EarleyRule{
		name: '<comparison predicate>'
	}
	mut rule_computational_operation_ := &EarleyRule{
		name: '<computational operation>'
	}
	mut rule_concatenation_operator_ := &EarleyRule{
		name: '<concatenation operator>'
	}
	mut rule_concatenation_1_ := &EarleyRule{
		name: '<concatenation: 1>'
	}
	mut rule_concatenation_ := &EarleyRule{
		name: '<concatenation>'
	}
	mut rule_contextually_typed_row_value_constructor_element_list_1_ := &EarleyRule{
		name: '<contextually typed row value constructor element list: 1>'
	}
	mut rule_contextually_typed_row_value_constructor_element_list_2_ := &EarleyRule{
		name: '<contextually typed row value constructor element list: 2>'
	}
	mut rule_contextually_typed_row_value_constructor_element_list_ := &EarleyRule{
		name: '<contextually typed row value constructor element list>'
	}
	mut rule_contextually_typed_row_value_constructor_element_ := &EarleyRule{
		name: '<contextually typed row value constructor element>'
	}
	mut rule_contextually_typed_row_value_constructor_1_ := &EarleyRule{
		name: '<contextually typed row value constructor: 1>'
	}
	mut rule_contextually_typed_row_value_constructor_2_ := &EarleyRule{
		name: '<contextually typed row value constructor: 2>'
	}
	mut rule_contextually_typed_row_value_constructor_3_ := &EarleyRule{
		name: '<contextually typed row value constructor: 3>'
	}
	mut rule_contextually_typed_row_value_constructor_4_ := &EarleyRule{
		name: '<contextually typed row value constructor: 4>'
	}
	mut rule_contextually_typed_row_value_constructor_5_ := &EarleyRule{
		name: '<contextually typed row value constructor: 5>'
	}
	mut rule_contextually_typed_row_value_constructor_ := &EarleyRule{
		name: '<contextually typed row value constructor>'
	}
	mut rule_contextually_typed_row_value_expression_list_2_ := &EarleyRule{
		name: '<contextually typed row value expression list: 2>'
	}
	mut rule_contextually_typed_row_value_expression_list_ := &EarleyRule{
		name: '<contextually typed row value expression list>'
	}
	mut rule_contextually_typed_row_value_expression_ := &EarleyRule{
		name: '<contextually typed row value expression>'
	}
	mut rule_contextually_typed_table_value_constructor_1_ := &EarleyRule{
		name: '<contextually typed table value constructor: 1>'
	}
	mut rule_contextually_typed_table_value_constructor_ := &EarleyRule{
		name: '<contextually typed table value constructor>'
	}
	mut rule_contextually_typed_value_specification_ := &EarleyRule{
		name: '<contextually typed value specification>'
	}
	mut rule_correlation_name_ := &EarleyRule{
		name: '<correlation name>'
	}
	mut rule_correlation_or_recognition_1_ := &EarleyRule{
		name: '<correlation or recognition: 1>'
	}
	mut rule_correlation_or_recognition_2_ := &EarleyRule{
		name: '<correlation or recognition: 2>'
	}
	mut rule_correlation_or_recognition_3_ := &EarleyRule{
		name: '<correlation or recognition: 3>'
	}
	mut rule_correlation_or_recognition_4_ := &EarleyRule{
		name: '<correlation or recognition: 4>'
	}
	mut rule_correlation_or_recognition_ := &EarleyRule{
		name: '<correlation or recognition>'
	}
	mut rule_current_date_value_function_1_ := &EarleyRule{
		name: '<current date value function: 1>'
	}
	mut rule_current_date_value_function_ := &EarleyRule{
		name: '<current date value function>'
	}
	mut rule_current_local_time_value_function_1_ := &EarleyRule{
		name: '<current local time value function: 1>'
	}
	mut rule_current_local_time_value_function_2_ := &EarleyRule{
		name: '<current local time value function: 2>'
	}
	mut rule_current_local_time_value_function_ := &EarleyRule{
		name: '<current local time value function>'
	}
	mut rule_current_local_timestamp_value_function_1_ := &EarleyRule{
		name: '<current local timestamp value function: 1>'
	}
	mut rule_current_local_timestamp_value_function_2_ := &EarleyRule{
		name: '<current local timestamp value function: 2>'
	}
	mut rule_current_local_timestamp_value_function_ := &EarleyRule{
		name: '<current local timestamp value function>'
	}
	mut rule_current_time_value_function_1_ := &EarleyRule{
		name: '<current time value function: 1>'
	}
	mut rule_current_time_value_function_2_ := &EarleyRule{
		name: '<current time value function: 2>'
	}
	mut rule_current_time_value_function_ := &EarleyRule{
		name: '<current time value function>'
	}
	mut rule_current_timestamp_value_function_1_ := &EarleyRule{
		name: '<current timestamp value function: 1>'
	}
	mut rule_current_timestamp_value_function_2_ := &EarleyRule{
		name: '<current timestamp value function: 2>'
	}
	mut rule_current_timestamp_value_function_ := &EarleyRule{
		name: '<current timestamp value function>'
	}
	mut rule_cursor_specification_1_ := &EarleyRule{
		name: '<cursor specification: 1>'
	}
	mut rule_cursor_specification_ := &EarleyRule{
		name: '<cursor specification>'
	}
	mut rule_data_type_or_domain_name_ := &EarleyRule{
		name: '<data type or domain name>'
	}
	mut rule_data_type_ := &EarleyRule{
		name: '<data type>'
	}
	mut rule_date_literal_1_ := &EarleyRule{
		name: '<date literal: 1>'
	}
	mut rule_date_literal_ := &EarleyRule{
		name: '<date literal>'
	}
	mut rule_date_string_ := &EarleyRule{
		name: '<date string>'
	}
	mut rule_datetime_factor_ := &EarleyRule{
		name: '<datetime factor>'
	}
	mut rule_datetime_literal_ := &EarleyRule{
		name: '<datetime literal>'
	}
	mut rule_datetime_primary_ := &EarleyRule{
		name: '<datetime primary>'
	}
	mut rule_datetime_term_ := &EarleyRule{
		name: '<datetime term>'
	}
	mut rule_datetime_type_1_ := &EarleyRule{
		name: '<datetime type: 1>'
	}
	mut rule_datetime_type_2_ := &EarleyRule{
		name: '<datetime type: 2>'
	}
	mut rule_datetime_type_3_ := &EarleyRule{
		name: '<datetime type: 3>'
	}
	mut rule_datetime_type_4_ := &EarleyRule{
		name: '<datetime type: 4>'
	}
	mut rule_datetime_type_5_ := &EarleyRule{
		name: '<datetime type: 5>'
	}
	mut rule_datetime_type_6_ := &EarleyRule{
		name: '<datetime type: 6>'
	}
	mut rule_datetime_type_7_ := &EarleyRule{
		name: '<datetime type: 7>'
	}
	mut rule_datetime_type_8_ := &EarleyRule{
		name: '<datetime type: 8>'
	}
	mut rule_datetime_type_9_ := &EarleyRule{
		name: '<datetime type: 9>'
	}
	mut rule_datetime_type_ := &EarleyRule{
		name: '<datetime type>'
	}
	mut rule_datetime_value_expression_ := &EarleyRule{
		name: '<datetime value expression>'
	}
	mut rule_datetime_value_function_ := &EarleyRule{
		name: '<datetime value function>'
	}
	mut rule_delete_statement_searched_1_ := &EarleyRule{
		name: '<delete statement: searched: 1>'
	}
	mut rule_delete_statement_searched_2_ := &EarleyRule{
		name: '<delete statement: searched: 2>'
	}
	mut rule_delete_statement_searched_ := &EarleyRule{
		name: '<delete statement: searched>'
	}
	mut rule_derived_column_list_ := &EarleyRule{
		name: '<derived column list>'
	}
	mut rule_derived_column_1_ := &EarleyRule{
		name: '<derived column: 1>'
	}
	mut rule_derived_column_2_ := &EarleyRule{
		name: '<derived column: 2>'
	}
	mut rule_derived_column_ := &EarleyRule{
		name: '<derived column>'
	}
	mut rule_derived_table_ := &EarleyRule{
		name: '<derived table>'
	}
	mut rule_drop_behavior_ := &EarleyRule{
		name: '<drop behavior>'
	}
	mut rule_drop_schema_statement_1_ := &EarleyRule{
		name: '<drop schema statement: 1>'
	}
	mut rule_drop_schema_statement_ := &EarleyRule{
		name: '<drop schema statement>'
	}
	mut rule_drop_table_statement_1_ := &EarleyRule{
		name: '<drop table statement: 1>'
	}
	mut rule_drop_table_statement_ := &EarleyRule{
		name: '<drop table statement>'
	}
	mut rule_dynamic_select_statement_ := &EarleyRule{
		name: '<dynamic select statement>'
	}
	mut rule_equals_operator_ := &EarleyRule{
		name: '<equals operator>'
	}
	mut rule_exact_numeric_literal_1_ := &EarleyRule{
		name: '<exact numeric literal: 1>'
	}
	mut rule_exact_numeric_literal_2_ := &EarleyRule{
		name: '<exact numeric literal: 2>'
	}
	mut rule_exact_numeric_literal_3_ := &EarleyRule{
		name: '<exact numeric literal: 3>'
	}
	mut rule_exact_numeric_literal_4_ := &EarleyRule{
		name: '<exact numeric literal: 4>'
	}
	mut rule_exact_numeric_literal_ := &EarleyRule{
		name: '<exact numeric literal>'
	}
	mut rule_exact_numeric_type_10_ := &EarleyRule{
		name: '<exact numeric type: 10>'
	}
	mut rule_exact_numeric_type_1_ := &EarleyRule{
		name: '<exact numeric type: 1>'
	}
	mut rule_exact_numeric_type_2_ := &EarleyRule{
		name: '<exact numeric type: 2>'
	}
	mut rule_exact_numeric_type_3_ := &EarleyRule{
		name: '<exact numeric type: 3>'
	}
	mut rule_exact_numeric_type_4_ := &EarleyRule{
		name: '<exact numeric type: 4>'
	}
	mut rule_exact_numeric_type_5_ := &EarleyRule{
		name: '<exact numeric type: 5>'
	}
	mut rule_exact_numeric_type_6_ := &EarleyRule{
		name: '<exact numeric type: 6>'
	}
	mut rule_exact_numeric_type_7_ := &EarleyRule{
		name: '<exact numeric type: 7>'
	}
	mut rule_exact_numeric_type_8_ := &EarleyRule{
		name: '<exact numeric type: 8>'
	}
	mut rule_exact_numeric_type_9_ := &EarleyRule{
		name: '<exact numeric type: 9>'
	}
	mut rule_exact_numeric_type_ := &EarleyRule{
		name: '<exact numeric type>'
	}
	mut rule_explicit_row_value_constructor_1_ := &EarleyRule{
		name: '<explicit row value constructor: 1>'
	}
	mut rule_explicit_row_value_constructor_2_ := &EarleyRule{
		name: '<explicit row value constructor: 2>'
	}
	mut rule_explicit_row_value_constructor_ := &EarleyRule{
		name: '<explicit row value constructor>'
	}
	mut rule_exponential_function_1_ := &EarleyRule{
		name: '<exponential function: 1>'
	}
	mut rule_exponential_function_ := &EarleyRule{
		name: '<exponential function>'
	}
	mut rule_factor_2_ := &EarleyRule{
		name: '<factor: 2>'
	}
	mut rule_factor_ := &EarleyRule{
		name: '<factor>'
	}
	mut rule_fetch_first_clause_1_ := &EarleyRule{
		name: '<fetch first clause: 1>'
	}
	mut rule_fetch_first_clause_ := &EarleyRule{
		name: '<fetch first clause>'
	}
	mut rule_fetch_first_quantity_ := &EarleyRule{
		name: '<fetch first quantity>'
	}
	mut rule_fetch_first_row_count_ := &EarleyRule{
		name: '<fetch first row count>'
	}
	mut rule_floor_function_1_ := &EarleyRule{
		name: '<floor function: 1>'
	}
	mut rule_floor_function_ := &EarleyRule{
		name: '<floor function>'
	}
	mut rule_fold_1_ := &EarleyRule{
		name: '<fold: 1>'
	}
	mut rule_fold_2_ := &EarleyRule{
		name: '<fold: 2>'
	}
	mut rule_fold_ := &EarleyRule{
		name: '<fold>'
	}
	mut rule_from_clause_1_ := &EarleyRule{
		name: '<from clause: 1>'
	}
	mut rule_from_clause_ := &EarleyRule{
		name: '<from clause>'
	}
	mut rule_from_constructor_1_ := &EarleyRule{
		name: '<from constructor: 1>'
	}
	mut rule_from_constructor_ := &EarleyRule{
		name: '<from constructor>'
	}
	mut rule_general_literal_ := &EarleyRule{
		name: '<general literal>'
	}
	mut rule_general_set_function_1_ := &EarleyRule{
		name: '<general set function: 1>'
	}
	mut rule_general_set_function_ := &EarleyRule{
		name: '<general set function>'
	}
	mut rule_general_value_specification_ := &EarleyRule{
		name: '<general value specification>'
	}
	mut rule_greater_than_operator_ := &EarleyRule{
		name: '<greater than operator>'
	}
	mut rule_greater_than_or_equals_operator_ := &EarleyRule{
		name: '<greater than or equals operator>'
	}
	mut rule_group_by_clause_1_ := &EarleyRule{
		name: '<group by clause: 1>'
	}
	mut rule_group_by_clause_ := &EarleyRule{
		name: '<group by clause>'
	}
	mut rule_grouping_column_reference_1_ := &EarleyRule{
		name: '<grouping column reference: 1>'
	}
	mut rule_grouping_column_reference_ := &EarleyRule{
		name: '<grouping column reference>'
	}
	mut rule_grouping_element_list_1_ := &EarleyRule{
		name: '<grouping element list: 1>'
	}
	mut rule_grouping_element_list_2_ := &EarleyRule{
		name: '<grouping element list: 2>'
	}
	mut rule_grouping_element_list_ := &EarleyRule{
		name: '<grouping element list>'
	}
	mut rule_grouping_element_ := &EarleyRule{
		name: '<grouping element>'
	}
	mut rule_host_parameter_name_1_ := &EarleyRule{
		name: '<host parameter name: 1>'
	}
	mut rule_host_parameter_name_ := &EarleyRule{
		name: '<host parameter name>'
	}
	mut rule_host_parameter_specification_ := &EarleyRule{
		name: '<host parameter specification>'
	}
	mut rule_identifier_body_ := &EarleyRule{
		name: '<identifier body>'
	}
	mut rule_identifier_chain_2_ := &EarleyRule{
		name: '<identifier chain: 2>'
	}
	mut rule_identifier_chain_ := &EarleyRule{
		name: '<identifier chain>'
	}
	mut rule_identifier_start_ := &EarleyRule{
		name: '<identifier start>'
	}
	mut rule_identifier_ := &EarleyRule{
		name: '<identifier>'
	}
	mut rule_implicitly_typed_value_specification_ := &EarleyRule{
		name: '<implicitly typed value specification>'
	}
	mut rule_insert_column_list_ := &EarleyRule{
		name: '<insert column list>'
	}
	mut rule_insert_columns_and_source_ := &EarleyRule{
		name: '<insert columns and source>'
	}
	mut rule_insert_statement_1_ := &EarleyRule{
		name: '<insert statement: 1>'
	}
	mut rule_insert_statement_ := &EarleyRule{
		name: '<insert statement>'
	}
	mut rule_insertion_target_ := &EarleyRule{
		name: '<insertion target>'
	}
	mut rule_is_symmetric_1_ := &EarleyRule{
		name: '<is symmetric: 1>'
	}
	mut rule_is_symmetric_2_ := &EarleyRule{
		name: '<is symmetric: 2>'
	}
	mut rule_is_symmetric_ := &EarleyRule{
		name: '<is symmetric>'
	}
	mut rule_join_condition_1_ := &EarleyRule{
		name: '<join condition: 1>'
	}
	mut rule_join_condition_ := &EarleyRule{
		name: '<join condition>'
	}
	mut rule_join_specification_ := &EarleyRule{
		name: '<join specification>'
	}
	mut rule_join_type_3_ := &EarleyRule{
		name: '<join type: 3>'
	}
	mut rule_join_type_ := &EarleyRule{
		name: '<join type>'
	}
	mut rule_joined_table_ := &EarleyRule{
		name: '<joined table>'
	}
	mut rule_left_paren_ := &EarleyRule{
		name: '<left paren>'
	}
	mut rule_length_expression_ := &EarleyRule{
		name: '<length expression>'
	}
	mut rule_length_ := &EarleyRule{
		name: '<length>'
	}
	mut rule_less_than_operator_ := &EarleyRule{
		name: '<less than operator>'
	}
	mut rule_less_than_or_equals_operator_ := &EarleyRule{
		name: '<less than or equals operator>'
	}
	mut rule_like_predicate_ := &EarleyRule{
		name: '<like predicate>'
	}
	mut rule_literal_2_ := &EarleyRule{
		name: '<literal: 2>'
	}
	mut rule_literal_ := &EarleyRule{
		name: '<literal>'
	}
	mut rule_local_or_schema_qualified_name_2_ := &EarleyRule{
		name: '<local or schema qualified name: 2>'
	}
	mut rule_local_or_schema_qualified_name_ := &EarleyRule{
		name: '<local or schema qualified name>'
	}
	mut rule_local_or_schema_qualifier_ := &EarleyRule{
		name: '<local or schema qualifier>'
	}
	mut rule_minus_sign_ := &EarleyRule{
		name: '<minus sign>'
	}
	mut rule_modulus_expression_1_ := &EarleyRule{
		name: '<modulus expression: 1>'
	}
	mut rule_modulus_expression_ := &EarleyRule{
		name: '<modulus expression>'
	}
	mut rule_natural_logarithm_1_ := &EarleyRule{
		name: '<natural logarithm: 1>'
	}
	mut rule_natural_logarithm_ := &EarleyRule{
		name: '<natural logarithm>'
	}
	mut rule_nonparenthesized_value_expression_primary_2_ := &EarleyRule{
		name: '<nonparenthesized value expression primary: 2>'
	}
	mut rule_nonparenthesized_value_expression_primary_ := &EarleyRule{
		name: '<nonparenthesized value expression primary>'
	}
	mut rule_not_equals_operator_ := &EarleyRule{
		name: '<not equals operator>'
	}
	mut rule_null_predicate_part_2_1_ := &EarleyRule{
		name: '<null predicate part 2: 1>'
	}
	mut rule_null_predicate_part_2_2_ := &EarleyRule{
		name: '<null predicate part 2: 2>'
	}
	mut rule_null_predicate_part_2_ := &EarleyRule{
		name: '<null predicate part 2>'
	}
	mut rule_null_predicate_1_ := &EarleyRule{
		name: '<null predicate: 1>'
	}
	mut rule_null_predicate_ := &EarleyRule{
		name: '<null predicate>'
	}
	mut rule_null_specification_1_ := &EarleyRule{
		name: '<null specification: 1>'
	}
	mut rule_null_specification_ := &EarleyRule{
		name: '<null specification>'
	}
	mut rule_numeric_primary_ := &EarleyRule{
		name: '<numeric primary>'
	}
	mut rule_numeric_type_ := &EarleyRule{
		name: '<numeric type>'
	}
	mut rule_numeric_value_expression_base_ := &EarleyRule{
		name: '<numeric value expression base>'
	}
	mut rule_numeric_value_expression_dividend_ := &EarleyRule{
		name: '<numeric value expression dividend>'
	}
	mut rule_numeric_value_expression_divisor_ := &EarleyRule{
		name: '<numeric value expression divisor>'
	}
	mut rule_numeric_value_expression_exponent_ := &EarleyRule{
		name: '<numeric value expression exponent>'
	}
	mut rule_numeric_value_expression_2_ := &EarleyRule{
		name: '<numeric value expression: 2>'
	}
	mut rule_numeric_value_expression_3_ := &EarleyRule{
		name: '<numeric value expression: 3>'
	}
	mut rule_numeric_value_expression_ := &EarleyRule{
		name: '<numeric value expression>'
	}
	mut rule_numeric_value_function_ := &EarleyRule{
		name: '<numeric value function>'
	}
	mut rule_object_column_ := &EarleyRule{
		name: '<object column>'
	}
	mut rule_octet_length_expression_1_ := &EarleyRule{
		name: '<octet length expression: 1>'
	}
	mut rule_octet_length_expression_ := &EarleyRule{
		name: '<octet length expression>'
	}
	mut rule_offset_row_count_ := &EarleyRule{
		name: '<offset row count>'
	}
	mut rule_order_by_clause_1_ := &EarleyRule{
		name: '<order by clause: 1>'
	}
	mut rule_order_by_clause_ := &EarleyRule{
		name: '<order by clause>'
	}
	mut rule_ordering_specification_1_ := &EarleyRule{
		name: '<ordering specification: 1>'
	}
	mut rule_ordering_specification_2_ := &EarleyRule{
		name: '<ordering specification: 2>'
	}
	mut rule_ordering_specification_ := &EarleyRule{
		name: '<ordering specification>'
	}
	mut rule_ordinary_grouping_set_ := &EarleyRule{
		name: '<ordinary grouping set>'
	}
	mut rule_outer_join_type_ := &EarleyRule{
		name: '<outer join type>'
	}
	mut rule_parenthesized_boolean_value_expression_1_ := &EarleyRule{
		name: '<parenthesized boolean value expression: 1>'
	}
	mut rule_parenthesized_boolean_value_expression_ := &EarleyRule{
		name: '<parenthesized boolean value expression>'
	}
	mut rule_parenthesized_derived_column_list_1_ := &EarleyRule{
		name: '<parenthesized derived column list: 1>'
	}
	mut rule_parenthesized_derived_column_list_ := &EarleyRule{
		name: '<parenthesized derived column list>'
	}
	mut rule_parenthesized_value_expression_1_ := &EarleyRule{
		name: '<parenthesized value expression: 1>'
	}
	mut rule_parenthesized_value_expression_ := &EarleyRule{
		name: '<parenthesized value expression>'
	}
	mut rule_period_ := &EarleyRule{
		name: '<period>'
	}
	mut rule_plus_sign_ := &EarleyRule{
		name: '<plus sign>'
	}
	mut rule_position_expression_ := &EarleyRule{
		name: '<position expression>'
	}
	mut rule_power_function_1_ := &EarleyRule{
		name: '<power function: 1>'
	}
	mut rule_power_function_ := &EarleyRule{
		name: '<power function>'
	}
	mut rule_precision_ := &EarleyRule{
		name: '<precision>'
	}
	mut rule_predefined_type_ := &EarleyRule{
		name: '<predefined type>'
	}
	mut rule_predicate_ := &EarleyRule{
		name: '<predicate>'
	}
	mut rule_preparable_sql_data_statement_ := &EarleyRule{
		name: '<preparable SQL data statement>'
	}
	mut rule_preparable_sql_schema_statement_ := &EarleyRule{
		name: '<preparable SQL schema statement>'
	}
	mut rule_preparable_sql_transaction_statement_ := &EarleyRule{
		name: '<preparable SQL transaction statement>'
	}
	mut rule_preparable_statement_ := &EarleyRule{
		name: '<preparable statement>'
	}
	mut rule_qualified_asterisk_1_ := &EarleyRule{
		name: '<qualified asterisk: 1>'
	}
	mut rule_qualified_asterisk_ := &EarleyRule{
		name: '<qualified asterisk>'
	}
	mut rule_qualified_identifier_ := &EarleyRule{
		name: '<qualified identifier>'
	}
	mut rule_qualified_join_1_ := &EarleyRule{
		name: '<qualified join: 1>'
	}
	mut rule_qualified_join_2_ := &EarleyRule{
		name: '<qualified join: 2>'
	}
	mut rule_qualified_join_ := &EarleyRule{
		name: '<qualified join>'
	}
	mut rule_query_expression_body_ := &EarleyRule{
		name: '<query expression body>'
	}
	mut rule_query_expression_1_ := &EarleyRule{
		name: '<query expression: 1>'
	}
	mut rule_query_expression_2_ := &EarleyRule{
		name: '<query expression: 2>'
	}
	mut rule_query_expression_3_ := &EarleyRule{
		name: '<query expression: 3>'
	}
	mut rule_query_expression_4_ := &EarleyRule{
		name: '<query expression: 4>'
	}
	mut rule_query_expression_5_ := &EarleyRule{
		name: '<query expression: 5>'
	}
	mut rule_query_expression_6_ := &EarleyRule{
		name: '<query expression: 6>'
	}
	mut rule_query_expression_7_ := &EarleyRule{
		name: '<query expression: 7>'
	}
	mut rule_query_expression_8_ := &EarleyRule{
		name: '<query expression: 8>'
	}
	mut rule_query_expression_ := &EarleyRule{
		name: '<query expression>'
	}
	mut rule_query_primary_ := &EarleyRule{
		name: '<query primary>'
	}
	mut rule_query_specification_1_ := &EarleyRule{
		name: '<query specification: 1>'
	}
	mut rule_query_specification_ := &EarleyRule{
		name: '<query specification>'
	}
	mut rule_query_term_ := &EarleyRule{
		name: '<query term>'
	}
	mut rule_regular_identifier_ := &EarleyRule{
		name: '<regular identifier>'
	}
	mut rule_result_offset_clause_1_ := &EarleyRule{
		name: '<result offset clause: 1>'
	}
	mut rule_result_offset_clause_ := &EarleyRule{
		name: '<result offset clause>'
	}
	mut rule_right_paren_ := &EarleyRule{
		name: '<right paren>'
	}
	mut rule_rollback_statement_1_ := &EarleyRule{
		name: '<rollback statement: 1>'
	}
	mut rule_rollback_statement_2_ := &EarleyRule{
		name: '<rollback statement: 2>'
	}
	mut rule_rollback_statement_ := &EarleyRule{
		name: '<rollback statement>'
	}
	mut rule_routine_invocation_1_ := &EarleyRule{
		name: '<routine invocation: 1>'
	}
	mut rule_routine_invocation_ := &EarleyRule{
		name: '<routine invocation>'
	}
	mut rule_routine_name_ := &EarleyRule{
		name: '<routine name>'
	}
	mut rule_row_or_rows_ := &EarleyRule{
		name: '<row or rows>'
	}
	mut rule_row_subquery_ := &EarleyRule{
		name: '<row subquery>'
	}
	mut rule_row_value_constructor_element_list_1_ := &EarleyRule{
		name: '<row value constructor element list: 1>'
	}
	mut rule_row_value_constructor_element_list_2_ := &EarleyRule{
		name: '<row value constructor element list: 2>'
	}
	mut rule_row_value_constructor_element_list_ := &EarleyRule{
		name: '<row value constructor element list>'
	}
	mut rule_row_value_constructor_element_ := &EarleyRule{
		name: '<row value constructor element>'
	}
	mut rule_row_value_constructor_predicand_ := &EarleyRule{
		name: '<row value constructor predicand>'
	}
	mut rule_row_value_constructor_ := &EarleyRule{
		name: '<row value constructor>'
	}
	mut rule_row_value_expression_list_1_ := &EarleyRule{
		name: '<row value expression list: 1>'
	}
	mut rule_row_value_expression_list_2_ := &EarleyRule{
		name: '<row value expression list: 2>'
	}
	mut rule_row_value_expression_list_ := &EarleyRule{
		name: '<row value expression list>'
	}
	mut rule_row_value_predicand_ := &EarleyRule{
		name: '<row value predicand>'
	}
	mut rule_scale_ := &EarleyRule{
		name: '<scale>'
	}
	mut rule_schema_definition_1_ := &EarleyRule{
		name: '<schema definition: 1>'
	}
	mut rule_schema_definition_ := &EarleyRule{
		name: '<schema definition>'
	}
	mut rule_schema_name_clause_ := &EarleyRule{
		name: '<schema name clause>'
	}
	mut rule_schema_name_ := &EarleyRule{
		name: '<schema name>'
	}
	mut rule_search_condition_ := &EarleyRule{
		name: '<search condition>'
	}
	mut rule_select_list_1_ := &EarleyRule{
		name: '<select list: 1>'
	}
	mut rule_select_list_3_ := &EarleyRule{
		name: '<select list: 3>'
	}
	mut rule_select_list_ := &EarleyRule{
		name: '<select list>'
	}
	mut rule_select_sublist_1_ := &EarleyRule{
		name: '<select sublist: 1>'
	}
	mut rule_select_sublist_2_ := &EarleyRule{
		name: '<select sublist: 2>'
	}
	mut rule_select_sublist_ := &EarleyRule{
		name: '<select sublist>'
	}
	mut rule_set_clause_list_2_ := &EarleyRule{
		name: '<set clause list: 2>'
	}
	mut rule_set_clause_list_ := &EarleyRule{
		name: '<set clause list>'
	}
	mut rule_set_clause_1_ := &EarleyRule{
		name: '<set clause: 1>'
	}
	mut rule_set_clause_ := &EarleyRule{
		name: '<set clause>'
	}
	mut rule_set_function_specification_ := &EarleyRule{
		name: '<set function specification>'
	}
	mut rule_set_function_type_ := &EarleyRule{
		name: '<set function type>'
	}
	mut rule_set_target_ := &EarleyRule{
		name: '<set target>'
	}
	mut rule_sign_ := &EarleyRule{
		name: '<sign>'
	}
	mut rule_signed_numeric_literal_1_ := &EarleyRule{
		name: '<signed numeric literal: 1>'
	}
	mut rule_signed_numeric_literal_2_ := &EarleyRule{
		name: '<signed numeric literal: 2>'
	}
	mut rule_signed_numeric_literal_ := &EarleyRule{
		name: '<signed numeric literal>'
	}
	mut rule_similar_pattern_ := &EarleyRule{
		name: '<similar pattern>'
	}
	mut rule_similar_predicate_part_2_1_ := &EarleyRule{
		name: '<similar predicate part 2: 1>'
	}
	mut rule_similar_predicate_part_2_2_ := &EarleyRule{
		name: '<similar predicate part 2: 2>'
	}
	mut rule_similar_predicate_part_2_ := &EarleyRule{
		name: '<similar predicate part 2>'
	}
	mut rule_similar_predicate_1_ := &EarleyRule{
		name: '<similar predicate: 1>'
	}
	mut rule_similar_predicate_ := &EarleyRule{
		name: '<similar predicate>'
	}
	mut rule_simple_table_ := &EarleyRule{
		name: '<simple table>'
	}
	mut rule_simple_value_specification_ := &EarleyRule{
		name: '<simple value specification>'
	}
	mut rule_solidus_ := &EarleyRule{
		name: '<solidus>'
	}
	mut rule_sort_key_ := &EarleyRule{
		name: '<sort key>'
	}
	mut rule_sort_specification_list_1_ := &EarleyRule{
		name: '<sort specification list: 1>'
	}
	mut rule_sort_specification_list_2_ := &EarleyRule{
		name: '<sort specification list: 2>'
	}
	mut rule_sort_specification_list_ := &EarleyRule{
		name: '<sort specification list>'
	}
	mut rule_sort_specification_1_ := &EarleyRule{
		name: '<sort specification: 1>'
	}
	mut rule_sort_specification_2_ := &EarleyRule{
		name: '<sort specification: 2>'
	}
	mut rule_sort_specification_ := &EarleyRule{
		name: '<sort specification>'
	}
	mut rule_sql_argument_list_1_ := &EarleyRule{
		name: '<SQL argument list: 1>'
	}
	mut rule_sql_argument_list_2_ := &EarleyRule{
		name: '<SQL argument list: 2>'
	}
	mut rule_sql_argument_list_3_ := &EarleyRule{
		name: '<SQL argument list: 3>'
	}
	mut rule_sql_argument_list_ := &EarleyRule{
		name: '<SQL argument list>'
	}
	mut rule_sql_argument_ := &EarleyRule{
		name: '<SQL argument>'
	}
	mut rule_sql_schema_definition_statement_ := &EarleyRule{
		name: '<SQL schema definition statement>'
	}
	mut rule_sql_schema_manipulation_statement_ := &EarleyRule{
		name: '<SQL schema manipulation statement>'
	}
	mut rule_sql_schema_statement_ := &EarleyRule{
		name: '<SQL schema statement>'
	}
	mut rule_sql_transaction_statement_ := &EarleyRule{
		name: '<SQL transaction statement>'
	}
	mut rule_square_root_1_ := &EarleyRule{
		name: '<square root: 1>'
	}
	mut rule_square_root_ := &EarleyRule{
		name: '<square root>'
	}
	mut rule_start_position_ := &EarleyRule{
		name: '<start position>'
	}
	mut rule_start_transaction_statement_1_ := &EarleyRule{
		name: '<start transaction statement: 1>'
	}
	mut rule_start_transaction_statement_ := &EarleyRule{
		name: '<start transaction statement>'
	}
	mut rule_string_length_ := &EarleyRule{
		name: '<string length>'
	}
	mut rule_string_value_expression_ := &EarleyRule{
		name: '<string value expression>'
	}
	mut rule_string_value_function_ := &EarleyRule{
		name: '<string value function>'
	}
	mut rule_subquery_1_ := &EarleyRule{
		name: '<subquery: 1>'
	}
	mut rule_subquery_ := &EarleyRule{
		name: '<subquery>'
	}
	mut rule_table_constraint_definition_ := &EarleyRule{
		name: '<table constraint definition>'
	}
	mut rule_table_constraint_ := &EarleyRule{
		name: '<table constraint>'
	}
	mut rule_table_contents_source_ := &EarleyRule{
		name: '<table contents source>'
	}
	mut rule_table_definition_1_ := &EarleyRule{
		name: '<table definition: 1>'
	}
	mut rule_table_definition_ := &EarleyRule{
		name: '<table definition>'
	}
	mut rule_table_element_list_1_ := &EarleyRule{
		name: '<table element list: 1>'
	}
	mut rule_table_element_list_ := &EarleyRule{
		name: '<table element list>'
	}
	mut rule_table_element_ := &EarleyRule{
		name: '<table element>'
	}
	mut rule_table_elements_1_ := &EarleyRule{
		name: '<table elements: 1>'
	}
	mut rule_table_elements_2_ := &EarleyRule{
		name: '<table elements: 2>'
	}
	mut rule_table_elements_ := &EarleyRule{
		name: '<table elements>'
	}
	mut rule_table_expression_1_ := &EarleyRule{
		name: '<table expression: 1>'
	}
	mut rule_table_expression_2_ := &EarleyRule{
		name: '<table expression: 2>'
	}
	mut rule_table_expression_3_ := &EarleyRule{
		name: '<table expression: 3>'
	}
	mut rule_table_expression_4_ := &EarleyRule{
		name: '<table expression: 4>'
	}
	mut rule_table_expression_ := &EarleyRule{
		name: '<table expression>'
	}
	mut rule_table_factor_ := &EarleyRule{
		name: '<table factor>'
	}
	mut rule_table_name_ := &EarleyRule{
		name: '<table name>'
	}
	mut rule_table_or_query_name_ := &EarleyRule{
		name: '<table or query name>'
	}
	mut rule_table_primary_1_ := &EarleyRule{
		name: '<table primary: 1>'
	}
	mut rule_table_primary_2_ := &EarleyRule{
		name: '<table primary: 2>'
	}
	mut rule_table_primary_3_ := &EarleyRule{
		name: '<table primary: 3>'
	}
	mut rule_table_primary_ := &EarleyRule{
		name: '<table primary>'
	}
	mut rule_table_reference_list_ := &EarleyRule{
		name: '<table reference list>'
	}
	mut rule_table_reference_1_ := &EarleyRule{
		name: '<table reference: 1>'
	}
	mut rule_table_reference_2_ := &EarleyRule{
		name: '<table reference: 2>'
	}
	mut rule_table_reference_ := &EarleyRule{
		name: '<table reference>'
	}
	mut rule_table_row_value_expression_ := &EarleyRule{
		name: '<table row value expression>'
	}
	mut rule_table_subquery_ := &EarleyRule{
		name: '<table subquery>'
	}
	mut rule_table_value_constructor_1_ := &EarleyRule{
		name: '<table value constructor: 1>'
	}
	mut rule_table_value_constructor_ := &EarleyRule{
		name: '<table value constructor>'
	}
	mut rule_target_table_ := &EarleyRule{
		name: '<target table>'
	}
	mut rule_term_2_ := &EarleyRule{
		name: '<term: 2>'
	}
	mut rule_term_3_ := &EarleyRule{
		name: '<term: 3>'
	}
	mut rule_term_ := &EarleyRule{
		name: '<term>'
	}
	mut rule_time_fractional_seconds_precision_ := &EarleyRule{
		name: '<time fractional seconds precision>'
	}
	mut rule_time_literal_1_ := &EarleyRule{
		name: '<time literal: 1>'
	}
	mut rule_time_literal_ := &EarleyRule{
		name: '<time literal>'
	}
	mut rule_time_precision_ := &EarleyRule{
		name: '<time precision>'
	}
	mut rule_time_string_ := &EarleyRule{
		name: '<time string>'
	}
	mut rule_timestamp_literal_1_ := &EarleyRule{
		name: '<timestamp literal: 1>'
	}
	mut rule_timestamp_literal_ := &EarleyRule{
		name: '<timestamp literal>'
	}
	mut rule_timestamp_precision_ := &EarleyRule{
		name: '<timestamp precision>'
	}
	mut rule_timestamp_string_ := &EarleyRule{
		name: '<timestamp string>'
	}
	mut rule_trigonometric_function_name_ := &EarleyRule{
		name: '<trigonometric function name>'
	}
	mut rule_trigonometric_function_1_ := &EarleyRule{
		name: '<trigonometric function: 1>'
	}
	mut rule_trigonometric_function_ := &EarleyRule{
		name: '<trigonometric function>'
	}
	mut rule_trim_character_ := &EarleyRule{
		name: '<trim character>'
	}
	mut rule_trim_function_1_ := &EarleyRule{
		name: '<trim function: 1>'
	}
	mut rule_trim_function_ := &EarleyRule{
		name: '<trim function>'
	}
	mut rule_trim_operands_1_ := &EarleyRule{
		name: '<trim operands: 1>'
	}
	mut rule_trim_operands_2_ := &EarleyRule{
		name: '<trim operands: 2>'
	}
	mut rule_trim_operands_3_ := &EarleyRule{
		name: '<trim operands: 3>'
	}
	mut rule_trim_operands_4_ := &EarleyRule{
		name: '<trim operands: 4>'
	}
	mut rule_trim_operands_5_ := &EarleyRule{
		name: '<trim operands: 5>'
	}
	mut rule_trim_operands_ := &EarleyRule{
		name: '<trim operands>'
	}
	mut rule_trim_source_ := &EarleyRule{
		name: '<trim source>'
	}
	mut rule_trim_specification_ := &EarleyRule{
		name: '<trim specification>'
	}
	mut rule_truth_value_1_ := &EarleyRule{
		name: '<truth value: 1>'
	}
	mut rule_truth_value_2_ := &EarleyRule{
		name: '<truth value: 2>'
	}
	mut rule_truth_value_3_ := &EarleyRule{
		name: '<truth value: 3>'
	}
	mut rule_truth_value_ := &EarleyRule{
		name: '<truth value>'
	}
	mut rule_unique_column_list_ := &EarleyRule{
		name: '<unique column list>'
	}
	mut rule_unique_constraint_definition_1_ := &EarleyRule{
		name: '<unique constraint definition: 1>'
	}
	mut rule_unique_constraint_definition_ := &EarleyRule{
		name: '<unique constraint definition>'
	}
	mut rule_unique_specification_1_ := &EarleyRule{
		name: '<unique specification: 1>'
	}
	mut rule_unique_specification_ := &EarleyRule{
		name: '<unique specification>'
	}
	mut rule_unqualified_schema_name_ := &EarleyRule{
		name: '<unqualified schema name>'
	}
	mut rule_unsigned_integer_ := &EarleyRule{
		name: '<unsigned integer>'
	}
	mut rule_unsigned_literal_ := &EarleyRule{
		name: '<unsigned literal>'
	}
	mut rule_unsigned_numeric_literal_ := &EarleyRule{
		name: '<unsigned numeric literal>'
	}
	mut rule_unsigned_value_specification_1_ := &EarleyRule{
		name: '<unsigned value specification: 1>'
	}
	mut rule_unsigned_value_specification_ := &EarleyRule{
		name: '<unsigned value specification>'
	}
	mut rule_update_source_ := &EarleyRule{
		name: '<update source>'
	}
	mut rule_update_statement_searched_1_ := &EarleyRule{
		name: '<update statement: searched: 1>'
	}
	mut rule_update_statement_searched_2_ := &EarleyRule{
		name: '<update statement: searched: 2>'
	}
	mut rule_update_statement_searched_ := &EarleyRule{
		name: '<update statement: searched>'
	}
	mut rule_update_target_ := &EarleyRule{
		name: '<update target>'
	}
	mut rule_value_expression_primary_ := &EarleyRule{
		name: '<value expression primary>'
	}
	mut rule_value_expression_ := &EarleyRule{
		name: '<value expression>'
	}
	mut rule_where_clause_1_ := &EarleyRule{
		name: '<where clause: 1>'
	}
	mut rule_where_clause_ := &EarleyRule{
		name: '<where clause>'
	}
	mut rule_with_or_without_time_zone_1_ := &EarleyRule{
		name: '<with or without time zone: 1>'
	}
	mut rule_with_or_without_time_zone_2_ := &EarleyRule{
		name: '<with or without time zone: 2>'
	}
	mut rule_with_or_without_time_zone_ := &EarleyRule{
		name: '<with or without time zone>'
	}
	mut rule__identifier := &EarleyRule{
		name: '^identifier'
	}
	mut rule__integer := &EarleyRule{
		name: '^integer'
	}
	mut rule__string := &EarleyRule{
		name: '^string'
	}
	mut rule_abs := &EarleyRule{
		name: 'ABS'
	}
	mut rule_acos := &EarleyRule{
		name: 'ACOS'
	}
	mut rule_and := &EarleyRule{
		name: 'AND'
	}
	mut rule_as := &EarleyRule{
		name: 'AS'
	}
	mut rule_asc := &EarleyRule{
		name: 'ASC'
	}
	mut rule_asin := &EarleyRule{
		name: 'ASIN'
	}
	mut rule_asymmetric := &EarleyRule{
		name: 'ASYMMETRIC'
	}
	mut rule_atan := &EarleyRule{
		name: 'ATAN'
	}
	mut rule_avg := &EarleyRule{
		name: 'AVG'
	}
	mut rule_between := &EarleyRule{
		name: 'BETWEEN'
	}
	mut rule_bigint := &EarleyRule{
		name: 'BIGINT'
	}
	mut rule_boolean := &EarleyRule{
		name: 'BOOLEAN'
	}
	mut rule_both := &EarleyRule{
		name: 'BOTH'
	}
	mut rule_by := &EarleyRule{
		name: 'BY'
	}
	mut rule_cascade := &EarleyRule{
		name: 'CASCADE'
	}
	mut rule_ceil := &EarleyRule{
		name: 'CEIL'
	}
	mut rule_ceiling := &EarleyRule{
		name: 'CEILING'
	}
	mut rule_char := &EarleyRule{
		name: 'CHAR'
	}
	mut rule_char_length := &EarleyRule{
		name: 'CHAR_LENGTH'
	}
	mut rule_character := &EarleyRule{
		name: 'CHARACTER'
	}
	mut rule_character_length := &EarleyRule{
		name: 'CHARACTER_LENGTH'
	}
	mut rule_characters := &EarleyRule{
		name: 'CHARACTERS'
	}
	mut rule_commit := &EarleyRule{
		name: 'COMMIT'
	}
	mut rule_cos := &EarleyRule{
		name: 'COS'
	}
	mut rule_cosh := &EarleyRule{
		name: 'COSH'
	}
	mut rule_count := &EarleyRule{
		name: 'COUNT'
	}
	mut rule_create := &EarleyRule{
		name: 'CREATE'
	}
	mut rule_current_date := &EarleyRule{
		name: 'CURRENT_DATE'
	}
	mut rule_current_time := &EarleyRule{
		name: 'CURRENT_TIME'
	}
	mut rule_current_timestamp := &EarleyRule{
		name: 'CURRENT_TIMESTAMP'
	}
	mut rule_date := &EarleyRule{
		name: 'DATE'
	}
	mut rule_decimal := &EarleyRule{
		name: 'DECIMAL'
	}
	mut rule_delete := &EarleyRule{
		name: 'DELETE'
	}
	mut rule_desc := &EarleyRule{
		name: 'DESC'
	}
	mut rule_double := &EarleyRule{
		name: 'DOUBLE'
	}
	mut rule_drop := &EarleyRule{
		name: 'DROP'
	}
	mut rule_exp := &EarleyRule{
		name: 'EXP'
	}
	mut rule_false := &EarleyRule{
		name: 'FALSE'
	}
	mut rule_fetch := &EarleyRule{
		name: 'FETCH'
	}
	mut rule_first := &EarleyRule{
		name: 'FIRST'
	}
	mut rule_float := &EarleyRule{
		name: 'FLOAT'
	}
	mut rule_floor := &EarleyRule{
		name: 'FLOOR'
	}
	mut rule_for := &EarleyRule{
		name: 'FOR'
	}
	mut rule_from := &EarleyRule{
		name: 'FROM'
	}
	mut rule_group := &EarleyRule{
		name: 'GROUP'
	}
	mut rule_in := &EarleyRule{
		name: 'IN'
	}
	mut rule_inner := &EarleyRule{
		name: 'INNER'
	}
	mut rule_insert := &EarleyRule{
		name: 'INSERT'
	}
	mut rule_int := &EarleyRule{
		name: 'INT'
	}
	mut rule_integer := &EarleyRule{
		name: 'INTEGER'
	}
	mut rule_into := &EarleyRule{
		name: 'INTO'
	}
	mut rule_is := &EarleyRule{
		name: 'IS'
	}
	mut rule_join := &EarleyRule{
		name: 'JOIN'
	}
	mut rule_key := &EarleyRule{
		name: 'KEY'
	}
	mut rule_leading := &EarleyRule{
		name: 'LEADING'
	}
	mut rule_left := &EarleyRule{
		name: 'LEFT'
	}
	mut rule_like := &EarleyRule{
		name: 'LIKE'
	}
	mut rule_ln := &EarleyRule{
		name: 'LN'
	}
	mut rule_localtime := &EarleyRule{
		name: 'LOCALTIME'
	}
	mut rule_localtimestamp := &EarleyRule{
		name: 'LOCALTIMESTAMP'
	}
	mut rule_log10 := &EarleyRule{
		name: 'LOG10'
	}
	mut rule_lower := &EarleyRule{
		name: 'LOWER'
	}
	mut rule_max := &EarleyRule{
		name: 'MAX'
	}
	mut rule_min := &EarleyRule{
		name: 'MIN'
	}
	mut rule_mod := &EarleyRule{
		name: 'MOD'
	}
	mut rule_not := &EarleyRule{
		name: 'NOT'
	}
	mut rule_null := &EarleyRule{
		name: 'NULL'
	}
	mut rule_numeric := &EarleyRule{
		name: 'NUMERIC'
	}
	mut rule_octet_length := &EarleyRule{
		name: 'OCTET_LENGTH'
	}
	mut rule_octets := &EarleyRule{
		name: 'OCTETS'
	}
	mut rule_offset := &EarleyRule{
		name: 'OFFSET'
	}
	mut rule_on := &EarleyRule{
		name: 'ON'
	}
	mut rule_only := &EarleyRule{
		name: 'ONLY'
	}
	mut rule_or := &EarleyRule{
		name: 'OR'
	}
	mut rule_order := &EarleyRule{
		name: 'ORDER'
	}
	mut rule_outer := &EarleyRule{
		name: 'OUTER'
	}
	mut rule_position := &EarleyRule{
		name: 'POSITION'
	}
	mut rule_power := &EarleyRule{
		name: 'POWER'
	}
	mut rule_precision := &EarleyRule{
		name: 'PRECISION'
	}
	mut rule_primary := &EarleyRule{
		name: 'PRIMARY'
	}
	mut rule_real := &EarleyRule{
		name: 'REAL'
	}
	mut rule_restrict := &EarleyRule{
		name: 'RESTRICT'
	}
	mut rule_right := &EarleyRule{
		name: 'RIGHT'
	}
	mut rule_rollback := &EarleyRule{
		name: 'ROLLBACK'
	}
	mut rule_row := &EarleyRule{
		name: 'ROW'
	}
	mut rule_rows := &EarleyRule{
		name: 'ROWS'
	}
	mut rule_schema := &EarleyRule{
		name: 'SCHEMA'
	}
	mut rule_select := &EarleyRule{
		name: 'SELECT'
	}
	mut rule_set := &EarleyRule{
		name: 'SET'
	}
	mut rule_similar := &EarleyRule{
		name: 'SIMILAR'
	}
	mut rule_sin := &EarleyRule{
		name: 'SIN'
	}
	mut rule_sinh := &EarleyRule{
		name: 'SINH'
	}
	mut rule_smallint := &EarleyRule{
		name: 'SMALLINT'
	}
	mut rule_sqrt := &EarleyRule{
		name: 'SQRT'
	}
	mut rule_start := &EarleyRule{
		name: 'START'
	}
	mut rule_substring := &EarleyRule{
		name: 'SUBSTRING'
	}
	mut rule_sum := &EarleyRule{
		name: 'SUM'
	}
	mut rule_symmetric := &EarleyRule{
		name: 'SYMMETRIC'
	}
	mut rule_table := &EarleyRule{
		name: 'TABLE'
	}
	mut rule_tan := &EarleyRule{
		name: 'TAN'
	}
	mut rule_tanh := &EarleyRule{
		name: 'TANH'
	}
	mut rule_time := &EarleyRule{
		name: 'TIME'
	}
	mut rule_timestamp := &EarleyRule{
		name: 'TIMESTAMP'
	}
	mut rule_to := &EarleyRule{
		name: 'TO'
	}
	mut rule_trailing := &EarleyRule{
		name: 'TRAILING'
	}
	mut rule_transaction := &EarleyRule{
		name: 'TRANSACTION'
	}
	mut rule_trim := &EarleyRule{
		name: 'TRIM'
	}
	mut rule_true := &EarleyRule{
		name: 'TRUE'
	}
	mut rule_unknown := &EarleyRule{
		name: 'UNKNOWN'
	}
	mut rule_update := &EarleyRule{
		name: 'UPDATE'
	}
	mut rule_upper := &EarleyRule{
		name: 'UPPER'
	}
	mut rule_using := &EarleyRule{
		name: 'USING'
	}
	mut rule_values := &EarleyRule{
		name: 'VALUES'
	}
	mut rule_varchar := &EarleyRule{
		name: 'VARCHAR'
	}
	mut rule_varying := &EarleyRule{
		name: 'VARYING'
	}
	mut rule_where := &EarleyRule{
		name: 'WHERE'
	}
	mut rule_with := &EarleyRule{
		name: 'WITH'
	}
	mut rule_without := &EarleyRule{
		name: 'WITHOUT'
	}
	mut rule_work := &EarleyRule{
		name: 'WORK'
	}
	mut rule_zone := &EarleyRule{
		name: 'ZONE'
	}

	rule_absolute_value_expression_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_abs
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_absolute_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_absolute_value_expression_1_
		},
	]}

	rule_actual_identifier_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_regular_identifier_
		},
	]}

	rule_aggregate_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_count
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_asterisk_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_aggregate_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_aggregate_function_1_
		},
	]}
	rule_aggregate_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_general_set_function_
		},
	]}

	rule_approximate_numeric_type_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_float
		},
	]}

	rule_approximate_numeric_type_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_float
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_precision_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_approximate_numeric_type_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_real
		},
	]}

	rule_approximate_numeric_type_4_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_double
		},
		&EarleyRuleOrString{
			rule: rule_precision
		},
	]}

	rule_approximate_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_approximate_numeric_type_1_
		},
	]}
	rule_approximate_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_approximate_numeric_type_2_
		},
	]}
	rule_approximate_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_approximate_numeric_type_3_
		},
	]}
	rule_approximate_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_approximate_numeric_type_4_
		},
	]}

	rule_as_clause_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_as
		},
		&EarleyRuleOrString{
			rule: rule_column_name_
		},
	]}

	rule_as_clause_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_as_clause_1_
		},
	]}
	rule_as_clause_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_name_
		},
	]}

	rule_asterisk_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '*'
			rule: 0
		},
	]}

	rule_asterisked_identifier_chain_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_asterisked_identifier_
		},
	]}

	rule_asterisked_identifier_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_identifier_
		},
	]}

	rule_basic_identifier_chain_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_identifier_chain_
		},
	]}

	rule_between_predicate_part_1_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_between
		},
	]}

	rule_between_predicate_part_1_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_not
		},
		&EarleyRuleOrString{
			rule: rule_between
		},
	]}

	rule_between_predicate_part_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_between_predicate_part_1_1_
		},
	]}
	rule_between_predicate_part_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_between_predicate_part_1_2_
		},
	]}

	rule_between_predicate_part_2_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_between_predicate_part_1_
		},
		&EarleyRuleOrString{
			rule: rule_row_value_predicand_
		},
		&EarleyRuleOrString{
			rule: rule_and
		},
		&EarleyRuleOrString{
			rule: rule_row_value_predicand_
		},
	]}

	rule_between_predicate_part_2_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_between_predicate_part_1_
		},
		&EarleyRuleOrString{
			rule: rule_is_symmetric_
		},
		&EarleyRuleOrString{
			rule: rule_row_value_predicand_
		},
		&EarleyRuleOrString{
			rule: rule_and
		},
		&EarleyRuleOrString{
			rule: rule_row_value_predicand_
		},
	]}

	rule_between_predicate_part_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_between_predicate_part_2_1_
		},
	]}
	rule_between_predicate_part_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_between_predicate_part_2_2_
		},
	]}

	rule_between_predicate_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_predicand_
		},
		&EarleyRuleOrString{
			rule: rule_between_predicate_part_2_
		},
	]}

	rule_between_predicate_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_between_predicate_1_
		},
	]}

	rule_boolean_factor_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_not
		},
		&EarleyRuleOrString{
			rule: rule_boolean_test_
		},
	]}

	rule_boolean_factor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_test_
		},
	]}
	rule_boolean_factor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_factor_2_
		},
	]}

	rule_boolean_literal_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_true
		},
	]}

	rule_boolean_literal_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_false
		},
	]}

	rule_boolean_literal_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unknown
		},
	]}

	rule_boolean_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_literal_1_
		},
	]}
	rule_boolean_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_literal_2_
		},
	]}
	rule_boolean_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_literal_3_
		},
	]}

	rule_boolean_predicand_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_parenthesized_boolean_value_expression_
		},
	]}
	rule_boolean_predicand_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_nonparenthesized_value_expression_primary_
		},
	]}

	rule_boolean_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_predicate_
		},
	]}
	rule_boolean_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_predicand_
		},
	]}

	rule_boolean_term_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_term_
		},
		&EarleyRuleOrString{
			rule: rule_and
		},
		&EarleyRuleOrString{
			rule: rule_boolean_factor_
		},
	]}

	rule_boolean_term_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_factor_
		},
	]}
	rule_boolean_term_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_term_2_
		},
	]}

	rule_boolean_test_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_primary_
		},
		&EarleyRuleOrString{
			rule: rule_is
		},
		&EarleyRuleOrString{
			rule: rule_truth_value_
		},
	]}

	rule_boolean_test_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_primary_
		},
		&EarleyRuleOrString{
			rule: rule_is
		},
		&EarleyRuleOrString{
			rule: rule_not
		},
		&EarleyRuleOrString{
			rule: rule_truth_value_
		},
	]}

	rule_boolean_test_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_primary_
		},
	]}
	rule_boolean_test_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_test_2_
		},
	]}
	rule_boolean_test_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_test_3_
		},
	]}

	rule_boolean_type_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean
		},
	]}

	rule_boolean_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_type_1_
		},
	]}

	rule_boolean_value_expression_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_or
		},
		&EarleyRuleOrString{
			rule: rule_boolean_term_
		},
	]}

	rule_boolean_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_term_
		},
	]}
	rule_boolean_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_value_expression_2_
		},
	]}

	rule_ceiling_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_ceil
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_ceiling_function_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_ceiling
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_ceiling_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_ceiling_function_1_
		},
	]}
	rule_ceiling_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_ceiling_function_2_
		},
	]}

	rule_char_length_expression_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_char_length
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_char_length_expression_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_length
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_char_length_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_char_length_expression_1_
		},
	]}
	rule_char_length_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_char_length_expression_2_
		},
	]}

	rule_char_length_units_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_characters
		},
	]}
	rule_char_length_units_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_octets
		},
	]}

	rule_character_factor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_primary_
		},
	]}

	rule_character_length_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_length_
		},
	]}

	rule_character_like_predicate_part_2_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_like
		},
		&EarleyRuleOrString{
			rule: rule_character_pattern_
		},
	]}

	rule_character_like_predicate_part_2_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_not
		},
		&EarleyRuleOrString{
			rule: rule_like
		},
		&EarleyRuleOrString{
			rule: rule_character_pattern_
		},
	]}

	rule_character_like_predicate_part_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_like_predicate_part_2_1_
		},
	]}
	rule_character_like_predicate_part_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_like_predicate_part_2_2_
		},
	]}

	rule_character_like_predicate_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_predicand_
		},
		&EarleyRuleOrString{
			rule: rule_character_like_predicate_part_2_
		},
	]}

	rule_character_like_predicate_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_like_predicate_1_
		},
	]}

	rule_character_pattern_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
	]}

	rule_character_position_expression_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_position
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_value_expression_1_
		},
		&EarleyRuleOrString{
			rule: rule_in
		},
		&EarleyRuleOrString{
			rule: rule_character_value_expression_2_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_character_position_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_position_expression_1_
		},
	]}

	rule_character_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_value_expression_primary_
		},
	]}
	rule_character_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_string_value_function_
		},
	]}

	rule_character_string_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule__string
		},
	]}

	rule_character_string_type_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character
		},
	]}

	rule_character_string_type_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_length_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_character_string_type_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_char
		},
	]}

	rule_character_string_type_4_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_char
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_length_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_character_string_type_5_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character
		},
		&EarleyRuleOrString{
			rule: rule_varying
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_length_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_character_string_type_6_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_char
		},
		&EarleyRuleOrString{
			rule: rule_varying
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_length_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_character_string_type_7_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_varchar
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_length_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_character_string_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_string_type_1_
		},
	]}
	rule_character_string_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_string_type_2_
		},
	]}
	rule_character_string_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_string_type_3_
		},
	]}
	rule_character_string_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_string_type_4_
		},
	]}
	rule_character_string_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_string_type_5_
		},
	]}
	rule_character_string_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_string_type_6_
		},
	]}
	rule_character_string_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_string_type_7_
		},
	]}

	rule_character_substring_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_substring
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_from
		},
		&EarleyRuleOrString{
			rule: rule_start_position_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_character_substring_function_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_substring
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_from
		},
		&EarleyRuleOrString{
			rule: rule_start_position_
		},
		&EarleyRuleOrString{
			rule: rule_for
		},
		&EarleyRuleOrString{
			rule: rule_string_length_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_character_substring_function_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_substring
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_from
		},
		&EarleyRuleOrString{
			rule: rule_start_position_
		},
		&EarleyRuleOrString{
			rule: rule_using
		},
		&EarleyRuleOrString{
			rule: rule_char_length_units_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_character_substring_function_4_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_substring
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_from
		},
		&EarleyRuleOrString{
			rule: rule_start_position_
		},
		&EarleyRuleOrString{
			rule: rule_for
		},
		&EarleyRuleOrString{
			rule: rule_string_length_
		},
		&EarleyRuleOrString{
			rule: rule_using
		},
		&EarleyRuleOrString{
			rule: rule_char_length_units_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_character_substring_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_substring_function_1_
		},
	]}
	rule_character_substring_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_substring_function_2_
		},
	]}
	rule_character_substring_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_substring_function_3_
		},
	]}
	rule_character_substring_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_substring_function_4_
		},
	]}

	rule_character_value_expression_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
	]}

	rule_character_value_expression_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
	]}

	rule_character_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_concatenation_
		},
	]}
	rule_character_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_factor_
		},
	]}

	rule_character_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_substring_function_
		},
	]}
	rule_character_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_fold_
		},
	]}
	rule_character_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trim_function_
		},
	]}

	rule_colon_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: ':'
			rule: 0
		},
	]}

	rule_column_constraint_definition_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_constraint_
		},
	]}

	rule_column_constraint_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_not
		},
		&EarleyRuleOrString{
			rule: rule_null
		},
	]}

	rule_column_constraint_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_constraint_1_
		},
	]}

	rule_column_definition_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_name_
		},
		&EarleyRuleOrString{
			rule: rule_data_type_or_domain_name_
		},
	]}

	rule_column_definition_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_name_
		},
		&EarleyRuleOrString{
			rule: rule_data_type_or_domain_name_
		},
		&EarleyRuleOrString{
			rule: rule_column_constraint_definition_
		},
	]}

	rule_column_definition_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_definition_1_
		},
	]}
	rule_column_definition_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_definition_2_
		},
	]}

	rule_column_name_list_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_name_
		},
	]}

	rule_column_name_list_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_name_list_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_column_name_
		},
	]}

	rule_column_name_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_name_list_1_
		},
	]}
	rule_column_name_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_name_list_2_
		},
	]}

	rule_column_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_identifier_
		},
	]}

	rule_column_reference_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_basic_identifier_chain_
		},
	]}

	rule_comma_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: ','
			rule: 0
		},
	]}

	rule_commit_statement_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_commit
		},
	]}

	rule_commit_statement_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_commit
		},
		&EarleyRuleOrString{
			rule: rule_work
		},
	]}

	rule_commit_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_commit_statement_1_
		},
	]}
	rule_commit_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_commit_statement_2_
		},
	]}

	rule_common_logarithm_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_log10
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_common_logarithm_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_common_logarithm_1_
		},
	]}

	rule_common_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
	]}
	rule_common_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_string_value_expression_
		},
	]}
	rule_common_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_value_expression_
		},
	]}

	rule_comp_op_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_equals_operator_
		},
	]}
	rule_comp_op_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_not_equals_operator_
		},
	]}
	rule_comp_op_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_less_than_operator_
		},
	]}
	rule_comp_op_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_greater_than_operator_
		},
	]}
	rule_comp_op_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_less_than_or_equals_operator_
		},
	]}
	rule_comp_op_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_greater_than_or_equals_operator_
		},
	]}

	rule_comparison_predicate_part_2_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_comp_op_
		},
		&EarleyRuleOrString{
			rule: rule_row_value_predicand_
		},
	]}

	rule_comparison_predicate_part_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_comparison_predicate_part_2_1_
		},
	]}

	rule_comparison_predicate_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_predicand_
		},
		&EarleyRuleOrString{
			rule: rule_comparison_predicate_part_2_
		},
	]}

	rule_comparison_predicate_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_comparison_predicate_1_
		},
	]}

	rule_computational_operation_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_avg
		},
	]}
	rule_computational_operation_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_max
		},
	]}
	rule_computational_operation_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_min
		},
	]}
	rule_computational_operation_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sum
		},
	]}
	rule_computational_operation_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_count
		},
	]}

	rule_concatenation_operator_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '||'
			rule: 0
		},
	]}

	rule_concatenation_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_concatenation_operator_
		},
		&EarleyRuleOrString{
			rule: rule_character_factor_
		},
	]}

	rule_concatenation_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_concatenation_1_
		},
	]}

	rule_contextually_typed_row_value_constructor_element_list_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_constructor_element_
		},
	]}

	rule_contextually_typed_row_value_constructor_element_list_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_constructor_element_list_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_constructor_element_
		},
	]}

	rule_contextually_typed_row_value_constructor_element_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_constructor_element_list_1_
		},
	]}
	rule_contextually_typed_row_value_constructor_element_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_constructor_element_list_2_
		},
	]}

	rule_contextually_typed_row_value_constructor_element_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_value_expression_
		},
	]}
	rule_contextually_typed_row_value_constructor_element_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_value_specification_
		},
	]}

	rule_contextually_typed_row_value_constructor_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_common_value_expression_
		},
	]}

	rule_contextually_typed_row_value_constructor_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_value_expression_
		},
	]}

	rule_contextually_typed_row_value_constructor_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_value_specification_
		},
	]}

	rule_contextually_typed_row_value_constructor_4_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_contextually_typed_value_specification_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_contextually_typed_row_value_constructor_5_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_constructor_element_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_constructor_element_list_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_contextually_typed_row_value_constructor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_constructor_1_
		},
	]}
	rule_contextually_typed_row_value_constructor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_constructor_2_
		},
	]}
	rule_contextually_typed_row_value_constructor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_constructor_3_
		},
	]}
	rule_contextually_typed_row_value_constructor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_constructor_4_
		},
	]}
	rule_contextually_typed_row_value_constructor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_constructor_5_
		},
	]}

	rule_contextually_typed_row_value_expression_list_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_expression_list_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_expression_
		},
	]}

	rule_contextually_typed_row_value_expression_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_expression_
		},
	]}
	rule_contextually_typed_row_value_expression_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_expression_list_2_
		},
	]}

	rule_contextually_typed_row_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_constructor_
		},
	]}

	rule_contextually_typed_table_value_constructor_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_values
		},
		&EarleyRuleOrString{
			rule: rule_contextually_typed_row_value_expression_list_
		},
	]}

	rule_contextually_typed_table_value_constructor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_table_value_constructor_1_
		},
	]}

	rule_contextually_typed_value_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_implicitly_typed_value_specification_
		},
	]}

	rule_correlation_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_identifier_
		},
	]}

	rule_correlation_or_recognition_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_correlation_name_
		},
	]}

	rule_correlation_or_recognition_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_as
		},
		&EarleyRuleOrString{
			rule: rule_correlation_name_
		},
	]}

	rule_correlation_or_recognition_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_correlation_name_
		},
		&EarleyRuleOrString{
			rule: rule_parenthesized_derived_column_list_
		},
	]}

	rule_correlation_or_recognition_4_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_as
		},
		&EarleyRuleOrString{
			rule: rule_correlation_name_
		},
		&EarleyRuleOrString{
			rule: rule_parenthesized_derived_column_list_
		},
	]}

	rule_correlation_or_recognition_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_correlation_or_recognition_1_
		},
	]}
	rule_correlation_or_recognition_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_correlation_or_recognition_2_
		},
	]}
	rule_correlation_or_recognition_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_correlation_or_recognition_3_
		},
	]}
	rule_correlation_or_recognition_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_correlation_or_recognition_4_
		},
	]}

	rule_current_date_value_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_date
		},
	]}

	rule_current_date_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_date_value_function_1_
		},
	]}

	rule_current_local_time_value_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_localtime
		},
	]}

	rule_current_local_time_value_function_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_localtime
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_time_precision_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_current_local_time_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_local_time_value_function_1_
		},
	]}
	rule_current_local_time_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_local_time_value_function_2_
		},
	]}

	rule_current_local_timestamp_value_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_localtimestamp
		},
	]}

	rule_current_local_timestamp_value_function_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_localtimestamp
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_timestamp_precision_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_current_local_timestamp_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_local_timestamp_value_function_1_
		},
	]}
	rule_current_local_timestamp_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_local_timestamp_value_function_2_
		},
	]}

	rule_current_time_value_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_time
		},
	]}

	rule_current_time_value_function_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_time
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_time_precision_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_current_time_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_time_value_function_1_
		},
	]}
	rule_current_time_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_time_value_function_2_
		},
	]}

	rule_current_timestamp_value_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_timestamp
		},
	]}

	rule_current_timestamp_value_function_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_timestamp
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_timestamp_precision_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_current_timestamp_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_timestamp_value_function_1_
		},
	]}
	rule_current_timestamp_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_timestamp_value_function_2_
		},
	]}

	rule_cursor_specification_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_
		},
	]}

	rule_cursor_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_cursor_specification_1_
		},
	]}

	rule_data_type_or_domain_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_data_type_
		},
	]}

	rule_data_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_predefined_type_
		},
	]}

	rule_date_literal_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_date
		},
		&EarleyRuleOrString{
			rule: rule_date_string_
		},
	]}

	rule_date_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_date_literal_1_
		},
	]}

	rule_date_string_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule__string
		},
	]}

	rule_datetime_factor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_primary_
		},
	]}

	rule_datetime_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_date_literal_
		},
	]}
	rule_datetime_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_time_literal_
		},
	]}
	rule_datetime_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_timestamp_literal_
		},
	]}

	rule_datetime_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_value_expression_primary_
		},
	]}
	rule_datetime_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_value_function_
		},
	]}

	rule_datetime_term_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_factor_
		},
	]}

	rule_datetime_type_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_date
		},
	]}

	rule_datetime_type_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_time
		},
	]}

	rule_datetime_type_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_time
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_time_precision_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_datetime_type_4_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_time
		},
		&EarleyRuleOrString{
			rule: rule_with_or_without_time_zone_
		},
	]}

	rule_datetime_type_5_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_time
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_time_precision_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
		&EarleyRuleOrString{
			rule: rule_with_or_without_time_zone_
		},
	]}

	rule_datetime_type_6_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_timestamp
		},
	]}

	rule_datetime_type_7_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_timestamp
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_timestamp_precision_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_datetime_type_8_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_timestamp
		},
		&EarleyRuleOrString{
			rule: rule_with_or_without_time_zone_
		},
	]}

	rule_datetime_type_9_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_timestamp
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_timestamp_precision_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
		&EarleyRuleOrString{
			rule: rule_with_or_without_time_zone_
		},
	]}

	rule_datetime_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_type_1_
		},
	]}
	rule_datetime_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_type_2_
		},
	]}
	rule_datetime_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_type_3_
		},
	]}
	rule_datetime_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_type_4_
		},
	]}
	rule_datetime_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_type_5_
		},
	]}
	rule_datetime_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_type_6_
		},
	]}
	rule_datetime_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_type_7_
		},
	]}
	rule_datetime_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_type_8_
		},
	]}
	rule_datetime_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_type_9_
		},
	]}

	rule_datetime_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_term_
		},
	]}

	rule_datetime_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_date_value_function_
		},
	]}
	rule_datetime_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_time_value_function_
		},
	]}
	rule_datetime_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_timestamp_value_function_
		},
	]}
	rule_datetime_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_local_time_value_function_
		},
	]}
	rule_datetime_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_current_local_timestamp_value_function_
		},
	]}

	rule_delete_statement_searched_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_delete
		},
		&EarleyRuleOrString{
			rule: rule_from
		},
		&EarleyRuleOrString{
			rule: rule_target_table_
		},
	]}

	rule_delete_statement_searched_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_delete
		},
		&EarleyRuleOrString{
			rule: rule_from
		},
		&EarleyRuleOrString{
			rule: rule_target_table_
		},
		&EarleyRuleOrString{
			rule: rule_where
		},
		&EarleyRuleOrString{
			rule: rule_search_condition_
		},
	]}

	rule_delete_statement_searched_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_delete_statement_searched_1_
		},
	]}
	rule_delete_statement_searched_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_delete_statement_searched_2_
		},
	]}

	rule_derived_column_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_name_list_
		},
	]}

	rule_derived_column_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_value_expression_
		},
	]}

	rule_derived_column_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_as_clause_
		},
	]}

	rule_derived_column_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_derived_column_1_
		},
	]}
	rule_derived_column_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_derived_column_2_
		},
	]}

	rule_derived_table_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_subquery_
		},
	]}

	rule_drop_behavior_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_cascade
		},
	]}
	rule_drop_behavior_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_restrict
		},
	]}

	rule_drop_schema_statement_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_drop
		},
		&EarleyRuleOrString{
			rule: rule_schema
		},
		&EarleyRuleOrString{
			rule: rule_schema_name_
		},
		&EarleyRuleOrString{
			rule: rule_drop_behavior_
		},
	]}

	rule_drop_schema_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_drop_schema_statement_1_
		},
	]}

	rule_drop_table_statement_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_drop
		},
		&EarleyRuleOrString{
			rule: rule_table
		},
		&EarleyRuleOrString{
			rule: rule_table_name_
		},
	]}

	rule_drop_table_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_drop_table_statement_1_
		},
	]}

	rule_dynamic_select_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_cursor_specification_
		},
	]}

	rule_equals_operator_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '='
			rule: 0
		},
	]}

	rule_exact_numeric_literal_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unsigned_integer_
		},
	]}

	rule_exact_numeric_literal_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unsigned_integer_
		},
		&EarleyRuleOrString{
			rule: rule_period_
		},
	]}

	rule_exact_numeric_literal_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unsigned_integer_
		},
		&EarleyRuleOrString{
			rule: rule_period_
		},
		&EarleyRuleOrString{
			rule: rule_unsigned_integer_
		},
	]}

	rule_exact_numeric_literal_4_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_period_
		},
		&EarleyRuleOrString{
			rule: rule_unsigned_integer_
		},
	]}

	rule_exact_numeric_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_literal_1_
		},
	]}
	rule_exact_numeric_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_literal_2_
		},
	]}
	rule_exact_numeric_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_literal_3_
		},
	]}
	rule_exact_numeric_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_literal_4_
		},
	]}

	rule_exact_numeric_type_10_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_bigint
		},
	]}

	rule_exact_numeric_type_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric
		},
	]}

	rule_exact_numeric_type_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_precision_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_exact_numeric_type_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_precision_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_scale_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_exact_numeric_type_4_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_decimal
		},
	]}

	rule_exact_numeric_type_5_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_decimal
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_precision_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_exact_numeric_type_6_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_decimal
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_precision_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_scale_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_exact_numeric_type_7_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_smallint
		},
	]}

	rule_exact_numeric_type_8_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_integer
		},
	]}

	rule_exact_numeric_type_9_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_int
		},
	]}

	rule_exact_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_type_1_
		},
	]}
	rule_exact_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_type_2_
		},
	]}
	rule_exact_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_type_3_
		},
	]}
	rule_exact_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_type_4_
		},
	]}
	rule_exact_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_type_5_
		},
	]}
	rule_exact_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_type_6_
		},
	]}
	rule_exact_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_type_7_
		},
	]}
	rule_exact_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_type_8_
		},
	]}
	rule_exact_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_type_9_
		},
	]}
	rule_exact_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_type_10_
		},
	]}

	rule_explicit_row_value_constructor_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_row_value_constructor_element_list_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_explicit_row_value_constructor_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_subquery_
		},
	]}

	rule_explicit_row_value_constructor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_explicit_row_value_constructor_1_
		},
	]}
	rule_explicit_row_value_constructor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_explicit_row_value_constructor_2_
		},
	]}

	rule_exponential_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exp
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_exponential_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exponential_function_1_
		},
	]}

	rule_factor_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sign_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_primary_
		},
	]}

	rule_factor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_primary_
		},
	]}
	rule_factor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_factor_2_
		},
	]}

	rule_fetch_first_clause_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_fetch
		},
		&EarleyRuleOrString{
			rule: rule_first
		},
		&EarleyRuleOrString{
			rule: rule_fetch_first_quantity_
		},
		&EarleyRuleOrString{
			rule: rule_row_or_rows_
		},
		&EarleyRuleOrString{
			rule: rule_only
		},
	]}

	rule_fetch_first_clause_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_fetch_first_clause_1_
		},
	]}

	rule_fetch_first_quantity_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_fetch_first_row_count_
		},
	]}

	rule_fetch_first_row_count_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_simple_value_specification_
		},
	]}

	rule_floor_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_floor
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_floor_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_floor_function_1_
		},
	]}

	rule_fold_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_upper
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_fold_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_lower
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_fold_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_fold_1_
		},
	]}
	rule_fold_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_fold_2_
		},
	]}

	rule_from_clause_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_from
		},
		&EarleyRuleOrString{
			rule: rule_table_reference_list_
		},
	]}

	rule_from_clause_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_from_clause_1_
		},
	]}

	rule_from_constructor_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_insert_column_list_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
		&EarleyRuleOrString{
			rule: rule_contextually_typed_table_value_constructor_
		},
	]}

	rule_from_constructor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_from_constructor_1_
		},
	]}

	rule_general_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_string_literal_
		},
	]}
	rule_general_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_literal_
		},
	]}
	rule_general_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_literal_
		},
	]}

	rule_general_set_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_set_function_type_
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_general_set_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_general_set_function_1_
		},
	]}

	rule_general_value_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_host_parameter_specification_
		},
	]}

	rule_greater_than_operator_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '>'
			rule: 0
		},
	]}

	rule_greater_than_or_equals_operator_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '>='
			rule: 0
		},
	]}

	rule_group_by_clause_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_group
		},
		&EarleyRuleOrString{
			rule: rule_by
		},
		&EarleyRuleOrString{
			rule: rule_grouping_element_list_
		},
	]}

	rule_group_by_clause_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_group_by_clause_1_
		},
	]}

	rule_grouping_column_reference_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_reference_
		},
	]}

	rule_grouping_column_reference_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_grouping_column_reference_1_
		},
	]}

	rule_grouping_element_list_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_grouping_element_
		},
	]}

	rule_grouping_element_list_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_grouping_element_list_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_grouping_element_
		},
	]}

	rule_grouping_element_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_grouping_element_list_1_
		},
	]}
	rule_grouping_element_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_grouping_element_list_2_
		},
	]}

	rule_grouping_element_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_ordinary_grouping_set_
		},
	]}

	rule_host_parameter_name_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_colon_
		},
		&EarleyRuleOrString{
			rule: rule_identifier_
		},
	]}

	rule_host_parameter_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_host_parameter_name_1_
		},
	]}

	rule_host_parameter_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_host_parameter_name_
		},
	]}

	rule_identifier_body_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_identifier_start_
		},
	]}

	rule_identifier_chain_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_identifier_
		},
		&EarleyRuleOrString{
			rule: rule_period_
		},
		&EarleyRuleOrString{
			rule: rule_identifier_
		},
	]}

	rule_identifier_chain_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_identifier_
		},
	]}
	rule_identifier_chain_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_identifier_chain_2_
		},
	]}

	rule_identifier_start_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule__identifier
		},
	]}

	rule_identifier_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_actual_identifier_
		},
	]}

	rule_implicitly_typed_value_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_null_specification_
		},
	]}

	rule_insert_column_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_name_list_
		},
	]}

	rule_insert_columns_and_source_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_from_constructor_
		},
	]}

	rule_insert_statement_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_insert
		},
		&EarleyRuleOrString{
			rule: rule_into
		},
		&EarleyRuleOrString{
			rule: rule_insertion_target_
		},
		&EarleyRuleOrString{
			rule: rule_insert_columns_and_source_
		},
	]}

	rule_insert_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_insert_statement_1_
		},
	]}

	rule_insertion_target_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_name_
		},
	]}

	rule_is_symmetric_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_symmetric
		},
	]}

	rule_is_symmetric_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_asymmetric
		},
	]}

	rule_is_symmetric_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_is_symmetric_1_
		},
	]}
	rule_is_symmetric_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_is_symmetric_2_
		},
	]}

	rule_join_condition_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_on
		},
		&EarleyRuleOrString{
			rule: rule_search_condition_
		},
	]}

	rule_join_condition_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_join_condition_1_
		},
	]}

	rule_join_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_join_condition_
		},
	]}

	rule_join_type_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_outer_join_type_
		},
		&EarleyRuleOrString{
			rule: rule_outer
		},
	]}

	rule_join_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_inner
		},
	]}
	rule_join_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_outer_join_type_
		},
	]}
	rule_join_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_join_type_3_
		},
	]}

	rule_joined_table_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_qualified_join_
		},
	]}

	rule_left_paren_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '('
			rule: 0
		},
	]}

	rule_length_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_char_length_expression_
		},
	]}
	rule_length_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_octet_length_expression_
		},
	]}

	rule_length_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unsigned_integer_
		},
	]}

	rule_less_than_operator_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '<'
			rule: 0
		},
	]}

	rule_less_than_or_equals_operator_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '<='
			rule: 0
		},
	]}

	rule_like_predicate_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_like_predicate_
		},
	]}

	rule_literal_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_general_literal_
		},
	]}

	rule_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_signed_numeric_literal_
		},
	]}
	rule_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_literal_2_
		},
	]}

	rule_local_or_schema_qualified_name_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_local_or_schema_qualifier_
		},
		&EarleyRuleOrString{
			rule: rule_period_
		},
		&EarleyRuleOrString{
			rule: rule_qualified_identifier_
		},
	]}

	rule_local_or_schema_qualified_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_qualified_identifier_
		},
	]}
	rule_local_or_schema_qualified_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_local_or_schema_qualified_name_2_
		},
	]}

	rule_local_or_schema_qualifier_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_schema_name_
		},
	]}

	rule_minus_sign_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '-'
			rule: 0
		},
	]}

	rule_modulus_expression_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_mod
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_dividend_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_divisor_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_modulus_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_modulus_expression_1_
		},
	]}

	rule_natural_logarithm_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_ln
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_natural_logarithm_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_natural_logarithm_1_
		},
	]}

	rule_nonparenthesized_value_expression_primary_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_reference_
		},
	]}

	rule_nonparenthesized_value_expression_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unsigned_value_specification_
		},
	]}
	rule_nonparenthesized_value_expression_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_nonparenthesized_value_expression_primary_2_
		},
	]}
	rule_nonparenthesized_value_expression_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_set_function_specification_
		},
	]}
	rule_nonparenthesized_value_expression_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_routine_invocation_
		},
	]}

	rule_not_equals_operator_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '<>'
			rule: 0
		},
	]}

	rule_null_predicate_part_2_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_is
		},
		&EarleyRuleOrString{
			rule: rule_null
		},
	]}

	rule_null_predicate_part_2_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_is
		},
		&EarleyRuleOrString{
			rule: rule_not
		},
		&EarleyRuleOrString{
			rule: rule_null
		},
	]}

	rule_null_predicate_part_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_null_predicate_part_2_1_
		},
	]}
	rule_null_predicate_part_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_null_predicate_part_2_2_
		},
	]}

	rule_null_predicate_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_predicand_
		},
		&EarleyRuleOrString{
			rule: rule_null_predicate_part_2_
		},
	]}

	rule_null_predicate_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_null_predicate_1_
		},
	]}

	rule_null_specification_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_null
		},
	]}

	rule_null_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_null_specification_1_
		},
	]}

	rule_numeric_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_value_expression_primary_
		},
	]}
	rule_numeric_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_value_function_
		},
	]}

	rule_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_type_
		},
	]}
	rule_numeric_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_approximate_numeric_type_
		},
	]}

	rule_numeric_value_expression_base_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
	]}

	rule_numeric_value_expression_dividend_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
	]}

	rule_numeric_value_expression_divisor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
	]}

	rule_numeric_value_expression_exponent_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
	]}

	rule_numeric_value_expression_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_plus_sign_
		},
		&EarleyRuleOrString{
			rule: rule_term_
		},
	]}

	rule_numeric_value_expression_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_minus_sign_
		},
		&EarleyRuleOrString{
			rule: rule_term_
		},
	]}

	rule_numeric_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_term_
		},
	]}
	rule_numeric_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_2_
		},
	]}
	rule_numeric_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_3_
		},
	]}

	rule_numeric_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_position_expression_
		},
	]}
	rule_numeric_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_length_expression_
		},
	]}
	rule_numeric_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_absolute_value_expression_
		},
	]}
	rule_numeric_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_modulus_expression_
		},
	]}
	rule_numeric_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trigonometric_function_
		},
	]}
	rule_numeric_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_common_logarithm_
		},
	]}
	rule_numeric_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_natural_logarithm_
		},
	]}
	rule_numeric_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exponential_function_
		},
	]}
	rule_numeric_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_power_function_
		},
	]}
	rule_numeric_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_square_root_
		},
	]}
	rule_numeric_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_floor_function_
		},
	]}
	rule_numeric_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_ceiling_function_
		},
	]}

	rule_object_column_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_name_
		},
	]}

	rule_octet_length_expression_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_octet_length
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_string_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_octet_length_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_octet_length_expression_1_
		},
	]}

	rule_offset_row_count_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_simple_value_specification_
		},
	]}

	rule_order_by_clause_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_order
		},
		&EarleyRuleOrString{
			rule: rule_by
		},
		&EarleyRuleOrString{
			rule: rule_sort_specification_list_
		},
	]}

	rule_order_by_clause_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_order_by_clause_1_
		},
	]}

	rule_ordering_specification_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_asc
		},
	]}

	rule_ordering_specification_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_desc
		},
	]}

	rule_ordering_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_ordering_specification_1_
		},
	]}
	rule_ordering_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_ordering_specification_2_
		},
	]}

	rule_ordinary_grouping_set_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_grouping_column_reference_
		},
	]}

	rule_outer_join_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_left
		},
	]}
	rule_outer_join_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_right
		},
	]}

	rule_parenthesized_boolean_value_expression_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_boolean_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_parenthesized_boolean_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_parenthesized_boolean_value_expression_1_
		},
	]}

	rule_parenthesized_derived_column_list_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_derived_column_list_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_parenthesized_derived_column_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_parenthesized_derived_column_list_1_
		},
	]}

	rule_parenthesized_value_expression_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_parenthesized_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_parenthesized_value_expression_1_
		},
	]}

	rule_period_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '.'
			rule: 0
		},
	]}

	rule_plus_sign_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '+'
			rule: 0
		},
	]}

	rule_position_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_position_expression_
		},
	]}

	rule_power_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_power
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_base_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_exponent_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_power_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_power_function_1_
		},
	]}

	rule_precision_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unsigned_integer_
		},
	]}

	rule_predefined_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_string_type_
		},
	]}
	rule_predefined_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_type_
		},
	]}
	rule_predefined_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_type_
		},
	]}
	rule_predefined_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_datetime_type_
		},
	]}

	rule_predicate_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_comparison_predicate_
		},
	]}
	rule_predicate_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_between_predicate_
		},
	]}
	rule_predicate_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_like_predicate_
		},
	]}
	rule_predicate_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_similar_predicate_
		},
	]}
	rule_predicate_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_null_predicate_
		},
	]}

	rule_preparable_sql_data_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_delete_statement_searched_
		},
	]}
	rule_preparable_sql_data_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_insert_statement_
		},
	]}
	rule_preparable_sql_data_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_dynamic_select_statement_
		},
	]}
	rule_preparable_sql_data_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_update_statement_searched_
		},
	]}

	rule_preparable_sql_schema_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sql_schema_statement_
		},
	]}

	rule_preparable_sql_transaction_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sql_transaction_statement_
		},
	]}

	rule_preparable_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_preparable_sql_data_statement_
		},
	]}
	rule_preparable_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_preparable_sql_schema_statement_
		},
	]}
	rule_preparable_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_preparable_sql_transaction_statement_
		},
	]}

	rule_qualified_asterisk_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_asterisked_identifier_chain_
		},
		&EarleyRuleOrString{
			rule: rule_period_
		},
		&EarleyRuleOrString{
			rule: rule_asterisk_
		},
	]}

	rule_qualified_asterisk_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_qualified_asterisk_1_
		},
	]}

	rule_qualified_identifier_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_identifier_
		},
	]}

	rule_qualified_join_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_reference_
		},
		&EarleyRuleOrString{
			rule: rule_join
		},
		&EarleyRuleOrString{
			rule: rule_table_reference_
		},
		&EarleyRuleOrString{
			rule: rule_join_specification_
		},
	]}

	rule_qualified_join_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_reference_
		},
		&EarleyRuleOrString{
			rule: rule_join_type_
		},
		&EarleyRuleOrString{
			rule: rule_join
		},
		&EarleyRuleOrString{
			rule: rule_table_reference_
		},
		&EarleyRuleOrString{
			rule: rule_join_specification_
		},
	]}

	rule_qualified_join_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_qualified_join_1_
		},
	]}
	rule_qualified_join_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_qualified_join_2_
		},
	]}

	rule_query_expression_body_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_term_
		},
	]}

	rule_query_expression_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_body_
		},
	]}

	rule_query_expression_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_body_
		},
		&EarleyRuleOrString{
			rule: rule_order_by_clause_
		},
	]}

	rule_query_expression_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_body_
		},
		&EarleyRuleOrString{
			rule: rule_result_offset_clause_
		},
	]}

	rule_query_expression_4_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_body_
		},
		&EarleyRuleOrString{
			rule: rule_order_by_clause_
		},
		&EarleyRuleOrString{
			rule: rule_result_offset_clause_
		},
	]}

	rule_query_expression_5_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_body_
		},
		&EarleyRuleOrString{
			rule: rule_fetch_first_clause_
		},
	]}

	rule_query_expression_6_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_body_
		},
		&EarleyRuleOrString{
			rule: rule_order_by_clause_
		},
		&EarleyRuleOrString{
			rule: rule_fetch_first_clause_
		},
	]}

	rule_query_expression_7_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_body_
		},
		&EarleyRuleOrString{
			rule: rule_order_by_clause_
		},
		&EarleyRuleOrString{
			rule: rule_result_offset_clause_
		},
		&EarleyRuleOrString{
			rule: rule_fetch_first_clause_
		},
	]}

	rule_query_expression_8_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_body_
		},
		&EarleyRuleOrString{
			rule: rule_result_offset_clause_
		},
		&EarleyRuleOrString{
			rule: rule_fetch_first_clause_
		},
	]}

	rule_query_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_1_
		},
	]}
	rule_query_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_2_
		},
	]}
	rule_query_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_3_
		},
	]}
	rule_query_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_4_
		},
	]}
	rule_query_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_5_
		},
	]}
	rule_query_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_6_
		},
	]}
	rule_query_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_7_
		},
	]}
	rule_query_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_expression_8_
		},
	]}

	rule_query_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_simple_table_
		},
	]}

	rule_query_specification_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_select
		},
		&EarleyRuleOrString{
			rule: rule_select_list_
		},
		&EarleyRuleOrString{
			rule: rule_table_expression_
		},
	]}

	rule_query_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_specification_1_
		},
	]}

	rule_query_term_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_primary_
		},
	]}

	rule_regular_identifier_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_identifier_body_
		},
	]}

	rule_result_offset_clause_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_offset
		},
		&EarleyRuleOrString{
			rule: rule_offset_row_count_
		},
		&EarleyRuleOrString{
			rule: rule_row_or_rows_
		},
	]}

	rule_result_offset_clause_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_result_offset_clause_1_
		},
	]}

	rule_right_paren_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: ')'
			rule: 0
		},
	]}

	rule_rollback_statement_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_rollback
		},
	]}

	rule_rollback_statement_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_rollback
		},
		&EarleyRuleOrString{
			rule: rule_work
		},
	]}

	rule_rollback_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_rollback_statement_1_
		},
	]}
	rule_rollback_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_rollback_statement_2_
		},
	]}

	rule_routine_invocation_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_routine_name_
		},
		&EarleyRuleOrString{
			rule: rule_sql_argument_list_
		},
	]}

	rule_routine_invocation_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_routine_invocation_1_
		},
	]}

	rule_routine_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_qualified_identifier_
		},
	]}

	rule_row_or_rows_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row
		},
	]}
	rule_row_or_rows_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_rows
		},
	]}

	rule_row_subquery_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_subquery_
		},
	]}

	rule_row_value_constructor_element_list_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_constructor_element_
		},
	]}

	rule_row_value_constructor_element_list_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_constructor_element_list_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_row_value_constructor_element_
		},
	]}

	rule_row_value_constructor_element_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_constructor_element_list_1_
		},
	]}
	rule_row_value_constructor_element_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_constructor_element_list_2_
		},
	]}

	rule_row_value_constructor_element_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_value_expression_
		},
	]}

	rule_row_value_constructor_predicand_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_common_value_expression_
		},
	]}
	rule_row_value_constructor_predicand_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_predicand_
		},
	]}

	rule_row_value_constructor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_common_value_expression_
		},
	]}
	rule_row_value_constructor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_value_expression_
		},
	]}
	rule_row_value_constructor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_explicit_row_value_constructor_
		},
	]}

	rule_row_value_expression_list_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_row_value_expression_
		},
	]}

	rule_row_value_expression_list_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_expression_list_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_table_row_value_expression_
		},
	]}

	rule_row_value_expression_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_expression_list_1_
		},
	]}
	rule_row_value_expression_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_expression_list_2_
		},
	]}

	rule_row_value_predicand_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_constructor_predicand_
		},
	]}

	rule_scale_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unsigned_integer_
		},
	]}

	rule_schema_definition_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_create
		},
		&EarleyRuleOrString{
			rule: rule_schema
		},
		&EarleyRuleOrString{
			rule: rule_schema_name_clause_
		},
	]}

	rule_schema_definition_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_schema_definition_1_
		},
	]}

	rule_schema_name_clause_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_schema_name_
		},
	]}

	rule_schema_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unqualified_schema_name_
		},
	]}

	rule_search_condition_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_value_expression_
		},
	]}

	rule_select_list_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_asterisk_
		},
	]}

	rule_select_list_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_select_list_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_select_sublist_
		},
	]}

	rule_select_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_select_list_1_
		},
	]}
	rule_select_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_select_sublist_
		},
	]}
	rule_select_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_select_list_3_
		},
	]}

	rule_select_sublist_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_derived_column_
		},
	]}

	rule_select_sublist_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_qualified_asterisk_
		},
	]}

	rule_select_sublist_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_select_sublist_1_
		},
	]}
	rule_select_sublist_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_select_sublist_2_
		},
	]}

	rule_set_clause_list_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_set_clause_list_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_set_clause_
		},
	]}

	rule_set_clause_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_set_clause_
		},
	]}
	rule_set_clause_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_set_clause_list_2_
		},
	]}

	rule_set_clause_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_set_target_
		},
		&EarleyRuleOrString{
			rule: rule_equals_operator_
		},
		&EarleyRuleOrString{
			rule: rule_update_source_
		},
	]}

	rule_set_clause_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_set_clause_1_
		},
	]}

	rule_set_function_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_aggregate_function_
		},
	]}

	rule_set_function_type_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_computational_operation_
		},
	]}

	rule_set_target_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_update_target_
		},
	]}

	rule_sign_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_plus_sign_
		},
	]}
	rule_sign_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_minus_sign_
		},
	]}

	rule_signed_numeric_literal_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unsigned_numeric_literal_
		},
	]}

	rule_signed_numeric_literal_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sign_
		},
		&EarleyRuleOrString{
			rule: rule_unsigned_numeric_literal_
		},
	]}

	rule_signed_numeric_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_signed_numeric_literal_1_
		},
	]}
	rule_signed_numeric_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_signed_numeric_literal_2_
		},
	]}

	rule_similar_pattern_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
	]}

	rule_similar_predicate_part_2_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_similar
		},
		&EarleyRuleOrString{
			rule: rule_to
		},
		&EarleyRuleOrString{
			rule: rule_similar_pattern_
		},
	]}

	rule_similar_predicate_part_2_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_not
		},
		&EarleyRuleOrString{
			rule: rule_similar
		},
		&EarleyRuleOrString{
			rule: rule_to
		},
		&EarleyRuleOrString{
			rule: rule_similar_pattern_
		},
	]}

	rule_similar_predicate_part_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_similar_predicate_part_2_1_
		},
	]}
	rule_similar_predicate_part_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_similar_predicate_part_2_2_
		},
	]}

	rule_similar_predicate_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_predicand_
		},
		&EarleyRuleOrString{
			rule: rule_similar_predicate_part_2_
		},
	]}

	rule_similar_predicate_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_similar_predicate_1_
		},
	]}

	rule_simple_table_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_query_specification_
		},
	]}
	rule_simple_table_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_value_constructor_
		},
	]}

	rule_simple_value_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_literal_
		},
	]}
	rule_simple_value_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_host_parameter_name_
		},
	]}

	rule_solidus_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '/'
			rule: 0
		},
	]}

	rule_sort_key_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_value_expression_
		},
	]}

	rule_sort_specification_list_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sort_specification_
		},
	]}

	rule_sort_specification_list_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sort_specification_list_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_sort_specification_
		},
	]}

	rule_sort_specification_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sort_specification_list_1_
		},
	]}
	rule_sort_specification_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sort_specification_list_2_
		},
	]}

	rule_sort_specification_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sort_key_
		},
	]}

	rule_sort_specification_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sort_key_
		},
		&EarleyRuleOrString{
			rule: rule_ordering_specification_
		},
	]}

	rule_sort_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sort_specification_1_
		},
	]}
	rule_sort_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sort_specification_2_
		},
	]}

	rule_sql_argument_list_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_sql_argument_list_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_sql_argument_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_sql_argument_list_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_sql_argument_list_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_sql_argument_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_sql_argument_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sql_argument_list_1_
		},
	]}
	rule_sql_argument_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sql_argument_list_2_
		},
	]}
	rule_sql_argument_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sql_argument_list_3_
		},
	]}

	rule_sql_argument_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_value_expression_
		},
	]}

	rule_sql_schema_definition_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_schema_definition_
		},
	]}
	rule_sql_schema_definition_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_definition_
		},
	]}

	rule_sql_schema_manipulation_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_drop_schema_statement_
		},
	]}
	rule_sql_schema_manipulation_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_drop_table_statement_
		},
	]}

	rule_sql_schema_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sql_schema_definition_statement_
		},
	]}
	rule_sql_schema_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sql_schema_manipulation_statement_
		},
	]}

	rule_sql_transaction_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_start_transaction_statement_
		},
	]}
	rule_sql_transaction_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_commit_statement_
		},
	]}
	rule_sql_transaction_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_rollback_statement_
		},
	]}

	rule_square_root_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sqrt
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_square_root_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_square_root_1_
		},
	]}

	rule_start_position_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
	]}

	rule_start_transaction_statement_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_start
		},
		&EarleyRuleOrString{
			rule: rule_transaction
		},
	]}

	rule_start_transaction_statement_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_start_transaction_statement_1_
		},
	]}

	rule_string_length_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
	]}

	rule_string_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
	]}

	rule_string_value_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_value_function_
		},
	]}

	rule_subquery_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_query_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_subquery_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_subquery_1_
		},
	]}

	rule_table_constraint_definition_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_constraint_
		},
	]}

	rule_table_constraint_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unique_constraint_definition_
		},
	]}

	rule_table_contents_source_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_element_list_
		},
	]}

	rule_table_definition_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_create
		},
		&EarleyRuleOrString{
			rule: rule_table
		},
		&EarleyRuleOrString{
			rule: rule_table_name_
		},
		&EarleyRuleOrString{
			rule: rule_table_contents_source_
		},
	]}

	rule_table_definition_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_definition_1_
		},
	]}

	rule_table_element_list_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_table_elements_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_table_element_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_element_list_1_
		},
	]}

	rule_table_element_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_definition_
		},
	]}
	rule_table_element_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_constraint_definition_
		},
	]}

	rule_table_elements_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_element_
		},
	]}

	rule_table_elements_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_elements_
		},
		&EarleyRuleOrString{
			rule: rule_comma_
		},
		&EarleyRuleOrString{
			rule: rule_table_element_
		},
	]}

	rule_table_elements_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_elements_1_
		},
	]}
	rule_table_elements_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_elements_2_
		},
	]}

	rule_table_expression_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_from_clause_
		},
	]}

	rule_table_expression_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_from_clause_
		},
		&EarleyRuleOrString{
			rule: rule_where_clause_
		},
	]}

	rule_table_expression_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_from_clause_
		},
		&EarleyRuleOrString{
			rule: rule_group_by_clause_
		},
	]}

	rule_table_expression_4_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_from_clause_
		},
		&EarleyRuleOrString{
			rule: rule_where_clause_
		},
		&EarleyRuleOrString{
			rule: rule_group_by_clause_
		},
	]}

	rule_table_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_expression_1_
		},
	]}
	rule_table_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_expression_2_
		},
	]}
	rule_table_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_expression_3_
		},
	]}
	rule_table_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_expression_4_
		},
	]}

	rule_table_factor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_primary_
		},
	]}

	rule_table_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_local_or_schema_qualified_name_
		},
	]}

	rule_table_or_query_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_name_
		},
	]}

	rule_table_primary_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_or_query_name_
		},
	]}

	rule_table_primary_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_derived_table_
		},
	]}

	rule_table_primary_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_derived_table_
		},
		&EarleyRuleOrString{
			rule: rule_correlation_or_recognition_
		},
	]}

	rule_table_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_primary_1_
		},
	]}
	rule_table_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_primary_2_
		},
	]}
	rule_table_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_primary_3_
		},
	]}

	rule_table_reference_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_reference_
		},
	]}

	rule_table_reference_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_factor_
		},
	]}

	rule_table_reference_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_joined_table_
		},
	]}

	rule_table_reference_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_reference_1_
		},
	]}
	rule_table_reference_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_reference_2_
		},
	]}

	rule_table_row_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_row_value_constructor_
		},
	]}

	rule_table_subquery_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_subquery_
		},
	]}

	rule_table_value_constructor_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_values
		},
		&EarleyRuleOrString{
			rule: rule_row_value_expression_list_
		},
	]}

	rule_table_value_constructor_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_value_constructor_1_
		},
	]}

	rule_target_table_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_table_name_
		},
	]}

	rule_term_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_term_
		},
		&EarleyRuleOrString{
			rule: rule_asterisk_
		},
		&EarleyRuleOrString{
			rule: rule_factor_
		},
	]}

	rule_term_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_term_
		},
		&EarleyRuleOrString{
			rule: rule_solidus_
		},
		&EarleyRuleOrString{
			rule: rule_factor_
		},
	]}

	rule_term_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_factor_
		},
	]}
	rule_term_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_term_2_
		},
	]}
	rule_term_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_term_3_
		},
	]}

	rule_time_fractional_seconds_precision_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unsigned_integer_
		},
	]}
	rule_time_fractional_seconds_precision_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unsigned_integer_
		},
	]}

	rule_time_literal_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_time
		},
		&EarleyRuleOrString{
			rule: rule_time_string_
		},
	]}

	rule_time_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_time_literal_1_
		},
	]}

	rule_time_precision_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_time_fractional_seconds_precision_
		},
	]}

	rule_time_string_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule__string
		},
	]}

	rule_timestamp_literal_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_timestamp
		},
		&EarleyRuleOrString{
			rule: rule_timestamp_string_
		},
	]}

	rule_timestamp_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_timestamp_literal_1_
		},
	]}

	rule_timestamp_precision_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_time_fractional_seconds_precision_
		},
	]}

	rule_timestamp_string_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule__string
		},
	]}

	rule_trigonometric_function_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sin
		},
	]}
	rule_trigonometric_function_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_cos
		},
	]}
	rule_trigonometric_function_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_tan
		},
	]}
	rule_trigonometric_function_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_sinh
		},
	]}
	rule_trigonometric_function_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_cosh
		},
	]}
	rule_trigonometric_function_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_tanh
		},
	]}
	rule_trigonometric_function_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_asin
		},
	]}
	rule_trigonometric_function_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_acos
		},
	]}
	rule_trigonometric_function_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_atan
		},
	]}

	rule_trigonometric_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trigonometric_function_name_
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_numeric_value_expression_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_trigonometric_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trigonometric_function_1_
		},
	]}

	rule_trim_character_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
	]}

	rule_trim_function_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trim
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_trim_operands_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_trim_function_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trim_function_1_
		},
	]}

	rule_trim_operands_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trim_source_
		},
	]}

	rule_trim_operands_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_from
		},
		&EarleyRuleOrString{
			rule: rule_trim_source_
		},
	]}

	rule_trim_operands_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trim_specification_
		},
		&EarleyRuleOrString{
			rule: rule_from
		},
		&EarleyRuleOrString{
			rule: rule_trim_source_
		},
	]}

	rule_trim_operands_4_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trim_character_
		},
		&EarleyRuleOrString{
			rule: rule_from
		},
		&EarleyRuleOrString{
			rule: rule_trim_source_
		},
	]}

	rule_trim_operands_5_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trim_specification_
		},
		&EarleyRuleOrString{
			rule: rule_trim_character_
		},
		&EarleyRuleOrString{
			rule: rule_from
		},
		&EarleyRuleOrString{
			rule: rule_trim_source_
		},
	]}

	rule_trim_operands_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trim_operands_1_
		},
	]}
	rule_trim_operands_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trim_operands_2_
		},
	]}
	rule_trim_operands_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trim_operands_3_
		},
	]}
	rule_trim_operands_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trim_operands_4_
		},
	]}
	rule_trim_operands_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trim_operands_5_
		},
	]}

	rule_trim_source_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_character_value_expression_
		},
	]}

	rule_trim_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_leading
		},
	]}
	rule_trim_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_trailing
		},
	]}
	rule_trim_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_both
		},
	]}

	rule_truth_value_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_true
		},
	]}

	rule_truth_value_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_false
		},
	]}

	rule_truth_value_3_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unknown
		},
	]}

	rule_truth_value_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_truth_value_1_
		},
	]}
	rule_truth_value_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_truth_value_2_
		},
	]}
	rule_truth_value_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_truth_value_3_
		},
	]}

	rule_unique_column_list_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_column_name_list_
		},
	]}

	rule_unique_constraint_definition_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unique_specification_
		},
		&EarleyRuleOrString{
			rule: rule_left_paren_
		},
		&EarleyRuleOrString{
			rule: rule_unique_column_list_
		},
		&EarleyRuleOrString{
			rule: rule_right_paren_
		},
	]}

	rule_unique_constraint_definition_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unique_constraint_definition_1_
		},
	]}

	rule_unique_specification_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_primary
		},
		&EarleyRuleOrString{
			rule: rule_key
		},
	]}

	rule_unique_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unique_specification_1_
		},
	]}

	rule_unqualified_schema_name_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_identifier_
		},
	]}

	rule_unsigned_integer_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule__integer
		},
	]}

	rule_unsigned_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unsigned_numeric_literal_
		},
	]}
	rule_unsigned_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_general_literal_
		},
	]}

	rule_unsigned_numeric_literal_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_exact_numeric_literal_
		},
	]}

	rule_unsigned_value_specification_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unsigned_literal_
		},
	]}

	rule_unsigned_value_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_unsigned_value_specification_1_
		},
	]}
	rule_unsigned_value_specification_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_general_value_specification_
		},
	]}

	rule_update_source_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_value_expression_
		},
	]}
	rule_update_source_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_contextually_typed_value_specification_
		},
	]}

	rule_update_statement_searched_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_update
		},
		&EarleyRuleOrString{
			rule: rule_target_table_
		},
		&EarleyRuleOrString{
			rule: rule_set
		},
		&EarleyRuleOrString{
			rule: rule_set_clause_list_
		},
	]}

	rule_update_statement_searched_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_update
		},
		&EarleyRuleOrString{
			rule: rule_target_table_
		},
		&EarleyRuleOrString{
			rule: rule_set
		},
		&EarleyRuleOrString{
			rule: rule_set_clause_list_
		},
		&EarleyRuleOrString{
			rule: rule_where
		},
		&EarleyRuleOrString{
			rule: rule_search_condition_
		},
	]}

	rule_update_statement_searched_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_update_statement_searched_1_
		},
	]}
	rule_update_statement_searched_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_update_statement_searched_2_
		},
	]}

	rule_update_target_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_object_column_
		},
	]}

	rule_value_expression_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_parenthesized_value_expression_
		},
	]}
	rule_value_expression_primary_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_nonparenthesized_value_expression_primary_
		},
	]}

	rule_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_common_value_expression_
		},
	]}
	rule_value_expression_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_boolean_value_expression_
		},
	]}

	rule_where_clause_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_where
		},
		&EarleyRuleOrString{
			rule: rule_search_condition_
		},
	]}

	rule_where_clause_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_where_clause_1_
		},
	]}

	rule_with_or_without_time_zone_1_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_with
		},
		&EarleyRuleOrString{
			rule: rule_time
		},
		&EarleyRuleOrString{
			rule: rule_zone
		},
	]}

	rule_with_or_without_time_zone_2_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_without
		},
		&EarleyRuleOrString{
			rule: rule_time
		},
		&EarleyRuleOrString{
			rule: rule_zone
		},
	]}

	rule_with_or_without_time_zone_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_with_or_without_time_zone_1_
		},
	]}
	rule_with_or_without_time_zone_.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			rule: rule_with_or_without_time_zone_2_
		},
	]}

	rule__identifier.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '^identifier'
			rule: 0
		},
	]}

	rule__integer.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '^integer'
			rule: 0
		},
	]}

	rule__string.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: '^string'
			rule: 0
		},
	]}

	rule_abs.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'ABS'
			rule: 0
		},
	]}

	rule_acos.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'ACOS'
			rule: 0
		},
	]}

	rule_and.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'AND'
			rule: 0
		},
	]}

	rule_as.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'AS'
			rule: 0
		},
	]}

	rule_asc.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'ASC'
			rule: 0
		},
	]}

	rule_asin.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'ASIN'
			rule: 0
		},
	]}

	rule_asymmetric.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'ASYMMETRIC'
			rule: 0
		},
	]}

	rule_atan.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'ATAN'
			rule: 0
		},
	]}

	rule_avg.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'AVG'
			rule: 0
		},
	]}

	rule_between.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'BETWEEN'
			rule: 0
		},
	]}

	rule_bigint.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'BIGINT'
			rule: 0
		},
	]}

	rule_boolean.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'BOOLEAN'
			rule: 0
		},
	]}

	rule_both.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'BOTH'
			rule: 0
		},
	]}

	rule_by.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'BY'
			rule: 0
		},
	]}

	rule_cascade.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'CASCADE'
			rule: 0
		},
	]}

	rule_ceil.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'CEIL'
			rule: 0
		},
	]}

	rule_ceiling.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'CEILING'
			rule: 0
		},
	]}

	rule_char.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'CHAR'
			rule: 0
		},
	]}

	rule_char_length.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'CHAR_LENGTH'
			rule: 0
		},
	]}

	rule_character.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'CHARACTER'
			rule: 0
		},
	]}

	rule_character_length.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'CHARACTER_LENGTH'
			rule: 0
		},
	]}

	rule_characters.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'CHARACTERS'
			rule: 0
		},
	]}

	rule_commit.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'COMMIT'
			rule: 0
		},
	]}

	rule_cos.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'COS'
			rule: 0
		},
	]}

	rule_cosh.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'COSH'
			rule: 0
		},
	]}

	rule_count.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'COUNT'
			rule: 0
		},
	]}

	rule_create.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'CREATE'
			rule: 0
		},
	]}

	rule_current_date.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'CURRENT_DATE'
			rule: 0
		},
	]}

	rule_current_time.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'CURRENT_TIME'
			rule: 0
		},
	]}

	rule_current_timestamp.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'CURRENT_TIMESTAMP'
			rule: 0
		},
	]}

	rule_date.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'DATE'
			rule: 0
		},
	]}

	rule_decimal.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'DECIMAL'
			rule: 0
		},
	]}

	rule_delete.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'DELETE'
			rule: 0
		},
	]}

	rule_desc.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'DESC'
			rule: 0
		},
	]}

	rule_double.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'DOUBLE'
			rule: 0
		},
	]}

	rule_drop.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'DROP'
			rule: 0
		},
	]}

	rule_exp.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'EXP'
			rule: 0
		},
	]}

	rule_false.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'FALSE'
			rule: 0
		},
	]}

	rule_fetch.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'FETCH'
			rule: 0
		},
	]}

	rule_first.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'FIRST'
			rule: 0
		},
	]}

	rule_float.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'FLOAT'
			rule: 0
		},
	]}

	rule_floor.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'FLOOR'
			rule: 0
		},
	]}

	rule_for.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'FOR'
			rule: 0
		},
	]}

	rule_from.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'FROM'
			rule: 0
		},
	]}

	rule_group.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'GROUP'
			rule: 0
		},
	]}

	rule_in.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'IN'
			rule: 0
		},
	]}

	rule_inner.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'INNER'
			rule: 0
		},
	]}

	rule_insert.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'INSERT'
			rule: 0
		},
	]}

	rule_int.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'INT'
			rule: 0
		},
	]}

	rule_integer.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'INTEGER'
			rule: 0
		},
	]}

	rule_into.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'INTO'
			rule: 0
		},
	]}

	rule_is.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'IS'
			rule: 0
		},
	]}

	rule_join.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'JOIN'
			rule: 0
		},
	]}

	rule_key.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'KEY'
			rule: 0
		},
	]}

	rule_leading.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'LEADING'
			rule: 0
		},
	]}

	rule_left.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'LEFT'
			rule: 0
		},
	]}

	rule_like.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'LIKE'
			rule: 0
		},
	]}

	rule_ln.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'LN'
			rule: 0
		},
	]}

	rule_localtime.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'LOCALTIME'
			rule: 0
		},
	]}

	rule_localtimestamp.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'LOCALTIMESTAMP'
			rule: 0
		},
	]}

	rule_log10.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'LOG10'
			rule: 0
		},
	]}

	rule_lower.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'LOWER'
			rule: 0
		},
	]}

	rule_max.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'MAX'
			rule: 0
		},
	]}

	rule_min.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'MIN'
			rule: 0
		},
	]}

	rule_mod.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'MOD'
			rule: 0
		},
	]}

	rule_not.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'NOT'
			rule: 0
		},
	]}

	rule_null.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'NULL'
			rule: 0
		},
	]}

	rule_numeric.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'NUMERIC'
			rule: 0
		},
	]}

	rule_octet_length.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'OCTET_LENGTH'
			rule: 0
		},
	]}

	rule_octets.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'OCTETS'
			rule: 0
		},
	]}

	rule_offset.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'OFFSET'
			rule: 0
		},
	]}

	rule_on.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'ON'
			rule: 0
		},
	]}

	rule_only.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'ONLY'
			rule: 0
		},
	]}

	rule_or.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'OR'
			rule: 0
		},
	]}

	rule_order.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'ORDER'
			rule: 0
		},
	]}

	rule_outer.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'OUTER'
			rule: 0
		},
	]}

	rule_position.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'POSITION'
			rule: 0
		},
	]}

	rule_power.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'POWER'
			rule: 0
		},
	]}

	rule_precision.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'PRECISION'
			rule: 0
		},
	]}

	rule_primary.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'PRIMARY'
			rule: 0
		},
	]}

	rule_real.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'REAL'
			rule: 0
		},
	]}

	rule_restrict.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'RESTRICT'
			rule: 0
		},
	]}

	rule_right.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'RIGHT'
			rule: 0
		},
	]}

	rule_rollback.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'ROLLBACK'
			rule: 0
		},
	]}

	rule_row.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'ROW'
			rule: 0
		},
	]}

	rule_rows.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'ROWS'
			rule: 0
		},
	]}

	rule_schema.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'SCHEMA'
			rule: 0
		},
	]}

	rule_select.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'SELECT'
			rule: 0
		},
	]}

	rule_set.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'SET'
			rule: 0
		},
	]}

	rule_similar.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'SIMILAR'
			rule: 0
		},
	]}

	rule_sin.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'SIN'
			rule: 0
		},
	]}

	rule_sinh.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'SINH'
			rule: 0
		},
	]}

	rule_smallint.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'SMALLINT'
			rule: 0
		},
	]}

	rule_sqrt.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'SQRT'
			rule: 0
		},
	]}

	rule_start.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'START'
			rule: 0
		},
	]}

	rule_substring.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'SUBSTRING'
			rule: 0
		},
	]}

	rule_sum.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'SUM'
			rule: 0
		},
	]}

	rule_symmetric.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'SYMMETRIC'
			rule: 0
		},
	]}

	rule_table.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'TABLE'
			rule: 0
		},
	]}

	rule_tan.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'TAN'
			rule: 0
		},
	]}

	rule_tanh.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'TANH'
			rule: 0
		},
	]}

	rule_time.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'TIME'
			rule: 0
		},
	]}

	rule_timestamp.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'TIMESTAMP'
			rule: 0
		},
	]}

	rule_to.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'TO'
			rule: 0
		},
	]}

	rule_trailing.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'TRAILING'
			rule: 0
		},
	]}

	rule_transaction.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'TRANSACTION'
			rule: 0
		},
	]}

	rule_trim.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'TRIM'
			rule: 0
		},
	]}

	rule_true.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'TRUE'
			rule: 0
		},
	]}

	rule_unknown.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'UNKNOWN'
			rule: 0
		},
	]}

	rule_update.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'UPDATE'
			rule: 0
		},
	]}

	rule_upper.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'UPPER'
			rule: 0
		},
	]}

	rule_using.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'USING'
			rule: 0
		},
	]}

	rule_values.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'VALUES'
			rule: 0
		},
	]}

	rule_varchar.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'VARCHAR'
			rule: 0
		},
	]}

	rule_varying.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'VARYING'
			rule: 0
		},
	]}

	rule_where.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'WHERE'
			rule: 0
		},
	]}

	rule_with.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'WITH'
			rule: 0
		},
	]}

	rule_without.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'WITHOUT'
			rule: 0
		},
	]}

	rule_work.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'WORK'
			rule: 0
		},
	]}

	rule_zone.productions << &EarleyProduction{[
		&EarleyRuleOrString{
			str: 'ZONE'
			rule: 0
		},
	]}

	rules['<absolute value expression: 1>'] = rule_absolute_value_expression_1_
	rules['<absolute value expression>'] = rule_absolute_value_expression_
	rules['<actual identifier>'] = rule_actual_identifier_
	rules['<aggregate function: 1>'] = rule_aggregate_function_1_
	rules['<aggregate function>'] = rule_aggregate_function_
	rules['<approximate numeric type: 1>'] = rule_approximate_numeric_type_1_
	rules['<approximate numeric type: 2>'] = rule_approximate_numeric_type_2_
	rules['<approximate numeric type: 3>'] = rule_approximate_numeric_type_3_
	rules['<approximate numeric type: 4>'] = rule_approximate_numeric_type_4_
	rules['<approximate numeric type>'] = rule_approximate_numeric_type_
	rules['<as clause: 1>'] = rule_as_clause_1_
	rules['<as clause>'] = rule_as_clause_
	rules['<asterisk>'] = rule_asterisk_
	rules['<asterisked identifier chain>'] = rule_asterisked_identifier_chain_
	rules['<asterisked identifier>'] = rule_asterisked_identifier_
	rules['<basic identifier chain>'] = rule_basic_identifier_chain_
	rules['<between predicate part 1: 1>'] = rule_between_predicate_part_1_1_
	rules['<between predicate part 1: 2>'] = rule_between_predicate_part_1_2_
	rules['<between predicate part 1>'] = rule_between_predicate_part_1_
	rules['<between predicate part 2: 1>'] = rule_between_predicate_part_2_1_
	rules['<between predicate part 2: 2>'] = rule_between_predicate_part_2_2_
	rules['<between predicate part 2>'] = rule_between_predicate_part_2_
	rules['<between predicate: 1>'] = rule_between_predicate_1_
	rules['<between predicate>'] = rule_between_predicate_
	rules['<boolean factor: 2>'] = rule_boolean_factor_2_
	rules['<boolean factor>'] = rule_boolean_factor_
	rules['<boolean literal: 1>'] = rule_boolean_literal_1_
	rules['<boolean literal: 2>'] = rule_boolean_literal_2_
	rules['<boolean literal: 3>'] = rule_boolean_literal_3_
	rules['<boolean literal>'] = rule_boolean_literal_
	rules['<boolean predicand>'] = rule_boolean_predicand_
	rules['<boolean primary>'] = rule_boolean_primary_
	rules['<boolean term: 2>'] = rule_boolean_term_2_
	rules['<boolean term>'] = rule_boolean_term_
	rules['<boolean test: 2>'] = rule_boolean_test_2_
	rules['<boolean test: 3>'] = rule_boolean_test_3_
	rules['<boolean test>'] = rule_boolean_test_
	rules['<boolean type: 1>'] = rule_boolean_type_1_
	rules['<boolean type>'] = rule_boolean_type_
	rules['<boolean value expression: 2>'] = rule_boolean_value_expression_2_
	rules['<boolean value expression>'] = rule_boolean_value_expression_
	rules['<ceiling function: 1>'] = rule_ceiling_function_1_
	rules['<ceiling function: 2>'] = rule_ceiling_function_2_
	rules['<ceiling function>'] = rule_ceiling_function_
	rules['<char length expression: 1>'] = rule_char_length_expression_1_
	rules['<char length expression: 2>'] = rule_char_length_expression_2_
	rules['<char length expression>'] = rule_char_length_expression_
	rules['<char length units>'] = rule_char_length_units_
	rules['<character factor>'] = rule_character_factor_
	rules['<character length>'] = rule_character_length_
	rules['<character like predicate part 2: 1>'] = rule_character_like_predicate_part_2_1_
	rules['<character like predicate part 2: 2>'] = rule_character_like_predicate_part_2_2_
	rules['<character like predicate part 2>'] = rule_character_like_predicate_part_2_
	rules['<character like predicate: 1>'] = rule_character_like_predicate_1_
	rules['<character like predicate>'] = rule_character_like_predicate_
	rules['<character pattern>'] = rule_character_pattern_
	rules['<character position expression: 1>'] = rule_character_position_expression_1_
	rules['<character position expression>'] = rule_character_position_expression_
	rules['<character primary>'] = rule_character_primary_
	rules['<character string literal>'] = rule_character_string_literal_
	rules['<character string type: 1>'] = rule_character_string_type_1_
	rules['<character string type: 2>'] = rule_character_string_type_2_
	rules['<character string type: 3>'] = rule_character_string_type_3_
	rules['<character string type: 4>'] = rule_character_string_type_4_
	rules['<character string type: 5>'] = rule_character_string_type_5_
	rules['<character string type: 6>'] = rule_character_string_type_6_
	rules['<character string type: 7>'] = rule_character_string_type_7_
	rules['<character string type>'] = rule_character_string_type_
	rules['<character substring function: 1>'] = rule_character_substring_function_1_
	rules['<character substring function: 2>'] = rule_character_substring_function_2_
	rules['<character substring function: 3>'] = rule_character_substring_function_3_
	rules['<character substring function: 4>'] = rule_character_substring_function_4_
	rules['<character substring function>'] = rule_character_substring_function_
	rules['<character value expression 1>'] = rule_character_value_expression_1_
	rules['<character value expression 2>'] = rule_character_value_expression_2_
	rules['<character value expression>'] = rule_character_value_expression_
	rules['<character value function>'] = rule_character_value_function_
	rules['<colon>'] = rule_colon_
	rules['<column constraint definition>'] = rule_column_constraint_definition_
	rules['<column constraint: 1>'] = rule_column_constraint_1_
	rules['<column constraint>'] = rule_column_constraint_
	rules['<column definition: 1>'] = rule_column_definition_1_
	rules['<column definition: 2>'] = rule_column_definition_2_
	rules['<column definition>'] = rule_column_definition_
	rules['<column name list: 1>'] = rule_column_name_list_1_
	rules['<column name list: 2>'] = rule_column_name_list_2_
	rules['<column name list>'] = rule_column_name_list_
	rules['<column name>'] = rule_column_name_
	rules['<column reference>'] = rule_column_reference_
	rules['<comma>'] = rule_comma_
	rules['<commit statement: 1>'] = rule_commit_statement_1_
	rules['<commit statement: 2>'] = rule_commit_statement_2_
	rules['<commit statement>'] = rule_commit_statement_
	rules['<common logarithm: 1>'] = rule_common_logarithm_1_
	rules['<common logarithm>'] = rule_common_logarithm_
	rules['<common value expression>'] = rule_common_value_expression_
	rules['<comp op>'] = rule_comp_op_
	rules['<comparison predicate part 2: 1>'] = rule_comparison_predicate_part_2_1_
	rules['<comparison predicate part 2>'] = rule_comparison_predicate_part_2_
	rules['<comparison predicate: 1>'] = rule_comparison_predicate_1_
	rules['<comparison predicate>'] = rule_comparison_predicate_
	rules['<computational operation>'] = rule_computational_operation_
	rules['<concatenation operator>'] = rule_concatenation_operator_
	rules['<concatenation: 1>'] = rule_concatenation_1_
	rules['<concatenation>'] = rule_concatenation_
	rules['<contextually typed row value constructor element list: 1>'] = rule_contextually_typed_row_value_constructor_element_list_1_
	rules['<contextually typed row value constructor element list: 2>'] = rule_contextually_typed_row_value_constructor_element_list_2_
	rules['<contextually typed row value constructor element list>'] = rule_contextually_typed_row_value_constructor_element_list_
	rules['<contextually typed row value constructor element>'] = rule_contextually_typed_row_value_constructor_element_
	rules['<contextually typed row value constructor: 1>'] = rule_contextually_typed_row_value_constructor_1_
	rules['<contextually typed row value constructor: 2>'] = rule_contextually_typed_row_value_constructor_2_
	rules['<contextually typed row value constructor: 3>'] = rule_contextually_typed_row_value_constructor_3_
	rules['<contextually typed row value constructor: 4>'] = rule_contextually_typed_row_value_constructor_4_
	rules['<contextually typed row value constructor: 5>'] = rule_contextually_typed_row_value_constructor_5_
	rules['<contextually typed row value constructor>'] = rule_contextually_typed_row_value_constructor_
	rules['<contextually typed row value expression list: 2>'] = rule_contextually_typed_row_value_expression_list_2_
	rules['<contextually typed row value expression list>'] = rule_contextually_typed_row_value_expression_list_
	rules['<contextually typed row value expression>'] = rule_contextually_typed_row_value_expression_
	rules['<contextually typed table value constructor: 1>'] = rule_contextually_typed_table_value_constructor_1_
	rules['<contextually typed table value constructor>'] = rule_contextually_typed_table_value_constructor_
	rules['<contextually typed value specification>'] = rule_contextually_typed_value_specification_
	rules['<correlation name>'] = rule_correlation_name_
	rules['<correlation or recognition: 1>'] = rule_correlation_or_recognition_1_
	rules['<correlation or recognition: 2>'] = rule_correlation_or_recognition_2_
	rules['<correlation or recognition: 3>'] = rule_correlation_or_recognition_3_
	rules['<correlation or recognition: 4>'] = rule_correlation_or_recognition_4_
	rules['<correlation or recognition>'] = rule_correlation_or_recognition_
	rules['<current date value function: 1>'] = rule_current_date_value_function_1_
	rules['<current date value function>'] = rule_current_date_value_function_
	rules['<current local time value function: 1>'] = rule_current_local_time_value_function_1_
	rules['<current local time value function: 2>'] = rule_current_local_time_value_function_2_
	rules['<current local time value function>'] = rule_current_local_time_value_function_
	rules['<current local timestamp value function: 1>'] = rule_current_local_timestamp_value_function_1_
	rules['<current local timestamp value function: 2>'] = rule_current_local_timestamp_value_function_2_
	rules['<current local timestamp value function>'] = rule_current_local_timestamp_value_function_
	rules['<current time value function: 1>'] = rule_current_time_value_function_1_
	rules['<current time value function: 2>'] = rule_current_time_value_function_2_
	rules['<current time value function>'] = rule_current_time_value_function_
	rules['<current timestamp value function: 1>'] = rule_current_timestamp_value_function_1_
	rules['<current timestamp value function: 2>'] = rule_current_timestamp_value_function_2_
	rules['<current timestamp value function>'] = rule_current_timestamp_value_function_
	rules['<cursor specification: 1>'] = rule_cursor_specification_1_
	rules['<cursor specification>'] = rule_cursor_specification_
	rules['<data type or domain name>'] = rule_data_type_or_domain_name_
	rules['<data type>'] = rule_data_type_
	rules['<date literal: 1>'] = rule_date_literal_1_
	rules['<date literal>'] = rule_date_literal_
	rules['<date string>'] = rule_date_string_
	rules['<datetime factor>'] = rule_datetime_factor_
	rules['<datetime literal>'] = rule_datetime_literal_
	rules['<datetime primary>'] = rule_datetime_primary_
	rules['<datetime term>'] = rule_datetime_term_
	rules['<datetime type: 1>'] = rule_datetime_type_1_
	rules['<datetime type: 2>'] = rule_datetime_type_2_
	rules['<datetime type: 3>'] = rule_datetime_type_3_
	rules['<datetime type: 4>'] = rule_datetime_type_4_
	rules['<datetime type: 5>'] = rule_datetime_type_5_
	rules['<datetime type: 6>'] = rule_datetime_type_6_
	rules['<datetime type: 7>'] = rule_datetime_type_7_
	rules['<datetime type: 8>'] = rule_datetime_type_8_
	rules['<datetime type: 9>'] = rule_datetime_type_9_
	rules['<datetime type>'] = rule_datetime_type_
	rules['<datetime value expression>'] = rule_datetime_value_expression_
	rules['<datetime value function>'] = rule_datetime_value_function_
	rules['<delete statement: searched: 1>'] = rule_delete_statement_searched_1_
	rules['<delete statement: searched: 2>'] = rule_delete_statement_searched_2_
	rules['<delete statement: searched>'] = rule_delete_statement_searched_
	rules['<derived column list>'] = rule_derived_column_list_
	rules['<derived column: 1>'] = rule_derived_column_1_
	rules['<derived column: 2>'] = rule_derived_column_2_
	rules['<derived column>'] = rule_derived_column_
	rules['<derived table>'] = rule_derived_table_
	rules['<drop behavior>'] = rule_drop_behavior_
	rules['<drop schema statement: 1>'] = rule_drop_schema_statement_1_
	rules['<drop schema statement>'] = rule_drop_schema_statement_
	rules['<drop table statement: 1>'] = rule_drop_table_statement_1_
	rules['<drop table statement>'] = rule_drop_table_statement_
	rules['<dynamic select statement>'] = rule_dynamic_select_statement_
	rules['<equals operator>'] = rule_equals_operator_
	rules['<exact numeric literal: 1>'] = rule_exact_numeric_literal_1_
	rules['<exact numeric literal: 2>'] = rule_exact_numeric_literal_2_
	rules['<exact numeric literal: 3>'] = rule_exact_numeric_literal_3_
	rules['<exact numeric literal: 4>'] = rule_exact_numeric_literal_4_
	rules['<exact numeric literal>'] = rule_exact_numeric_literal_
	rules['<exact numeric type: 10>'] = rule_exact_numeric_type_10_
	rules['<exact numeric type: 1>'] = rule_exact_numeric_type_1_
	rules['<exact numeric type: 2>'] = rule_exact_numeric_type_2_
	rules['<exact numeric type: 3>'] = rule_exact_numeric_type_3_
	rules['<exact numeric type: 4>'] = rule_exact_numeric_type_4_
	rules['<exact numeric type: 5>'] = rule_exact_numeric_type_5_
	rules['<exact numeric type: 6>'] = rule_exact_numeric_type_6_
	rules['<exact numeric type: 7>'] = rule_exact_numeric_type_7_
	rules['<exact numeric type: 8>'] = rule_exact_numeric_type_8_
	rules['<exact numeric type: 9>'] = rule_exact_numeric_type_9_
	rules['<exact numeric type>'] = rule_exact_numeric_type_
	rules['<explicit row value constructor: 1>'] = rule_explicit_row_value_constructor_1_
	rules['<explicit row value constructor: 2>'] = rule_explicit_row_value_constructor_2_
	rules['<explicit row value constructor>'] = rule_explicit_row_value_constructor_
	rules['<exponential function: 1>'] = rule_exponential_function_1_
	rules['<exponential function>'] = rule_exponential_function_
	rules['<factor: 2>'] = rule_factor_2_
	rules['<factor>'] = rule_factor_
	rules['<fetch first clause: 1>'] = rule_fetch_first_clause_1_
	rules['<fetch first clause>'] = rule_fetch_first_clause_
	rules['<fetch first quantity>'] = rule_fetch_first_quantity_
	rules['<fetch first row count>'] = rule_fetch_first_row_count_
	rules['<floor function: 1>'] = rule_floor_function_1_
	rules['<floor function>'] = rule_floor_function_
	rules['<fold: 1>'] = rule_fold_1_
	rules['<fold: 2>'] = rule_fold_2_
	rules['<fold>'] = rule_fold_
	rules['<from clause: 1>'] = rule_from_clause_1_
	rules['<from clause>'] = rule_from_clause_
	rules['<from constructor: 1>'] = rule_from_constructor_1_
	rules['<from constructor>'] = rule_from_constructor_
	rules['<general literal>'] = rule_general_literal_
	rules['<general set function: 1>'] = rule_general_set_function_1_
	rules['<general set function>'] = rule_general_set_function_
	rules['<general value specification>'] = rule_general_value_specification_
	rules['<greater than operator>'] = rule_greater_than_operator_
	rules['<greater than or equals operator>'] = rule_greater_than_or_equals_operator_
	rules['<group by clause: 1>'] = rule_group_by_clause_1_
	rules['<group by clause>'] = rule_group_by_clause_
	rules['<grouping column reference: 1>'] = rule_grouping_column_reference_1_
	rules['<grouping column reference>'] = rule_grouping_column_reference_
	rules['<grouping element list: 1>'] = rule_grouping_element_list_1_
	rules['<grouping element list: 2>'] = rule_grouping_element_list_2_
	rules['<grouping element list>'] = rule_grouping_element_list_
	rules['<grouping element>'] = rule_grouping_element_
	rules['<host parameter name: 1>'] = rule_host_parameter_name_1_
	rules['<host parameter name>'] = rule_host_parameter_name_
	rules['<host parameter specification>'] = rule_host_parameter_specification_
	rules['<identifier body>'] = rule_identifier_body_
	rules['<identifier chain: 2>'] = rule_identifier_chain_2_
	rules['<identifier chain>'] = rule_identifier_chain_
	rules['<identifier start>'] = rule_identifier_start_
	rules['<identifier>'] = rule_identifier_
	rules['<implicitly typed value specification>'] = rule_implicitly_typed_value_specification_
	rules['<insert column list>'] = rule_insert_column_list_
	rules['<insert columns and source>'] = rule_insert_columns_and_source_
	rules['<insert statement: 1>'] = rule_insert_statement_1_
	rules['<insert statement>'] = rule_insert_statement_
	rules['<insertion target>'] = rule_insertion_target_
	rules['<is symmetric: 1>'] = rule_is_symmetric_1_
	rules['<is symmetric: 2>'] = rule_is_symmetric_2_
	rules['<is symmetric>'] = rule_is_symmetric_
	rules['<join condition: 1>'] = rule_join_condition_1_
	rules['<join condition>'] = rule_join_condition_
	rules['<join specification>'] = rule_join_specification_
	rules['<join type: 3>'] = rule_join_type_3_
	rules['<join type>'] = rule_join_type_
	rules['<joined table>'] = rule_joined_table_
	rules['<left paren>'] = rule_left_paren_
	rules['<length expression>'] = rule_length_expression_
	rules['<length>'] = rule_length_
	rules['<less than operator>'] = rule_less_than_operator_
	rules['<less than or equals operator>'] = rule_less_than_or_equals_operator_
	rules['<like predicate>'] = rule_like_predicate_
	rules['<literal: 2>'] = rule_literal_2_
	rules['<literal>'] = rule_literal_
	rules['<local or schema qualified name: 2>'] = rule_local_or_schema_qualified_name_2_
	rules['<local or schema qualified name>'] = rule_local_or_schema_qualified_name_
	rules['<local or schema qualifier>'] = rule_local_or_schema_qualifier_
	rules['<minus sign>'] = rule_minus_sign_
	rules['<modulus expression: 1>'] = rule_modulus_expression_1_
	rules['<modulus expression>'] = rule_modulus_expression_
	rules['<natural logarithm: 1>'] = rule_natural_logarithm_1_
	rules['<natural logarithm>'] = rule_natural_logarithm_
	rules['<nonparenthesized value expression primary: 2>'] = rule_nonparenthesized_value_expression_primary_2_
	rules['<nonparenthesized value expression primary>'] = rule_nonparenthesized_value_expression_primary_
	rules['<not equals operator>'] = rule_not_equals_operator_
	rules['<null predicate part 2: 1>'] = rule_null_predicate_part_2_1_
	rules['<null predicate part 2: 2>'] = rule_null_predicate_part_2_2_
	rules['<null predicate part 2>'] = rule_null_predicate_part_2_
	rules['<null predicate: 1>'] = rule_null_predicate_1_
	rules['<null predicate>'] = rule_null_predicate_
	rules['<null specification: 1>'] = rule_null_specification_1_
	rules['<null specification>'] = rule_null_specification_
	rules['<numeric primary>'] = rule_numeric_primary_
	rules['<numeric type>'] = rule_numeric_type_
	rules['<numeric value expression base>'] = rule_numeric_value_expression_base_
	rules['<numeric value expression dividend>'] = rule_numeric_value_expression_dividend_
	rules['<numeric value expression divisor>'] = rule_numeric_value_expression_divisor_
	rules['<numeric value expression exponent>'] = rule_numeric_value_expression_exponent_
	rules['<numeric value expression: 2>'] = rule_numeric_value_expression_2_
	rules['<numeric value expression: 3>'] = rule_numeric_value_expression_3_
	rules['<numeric value expression>'] = rule_numeric_value_expression_
	rules['<numeric value function>'] = rule_numeric_value_function_
	rules['<object column>'] = rule_object_column_
	rules['<octet length expression: 1>'] = rule_octet_length_expression_1_
	rules['<octet length expression>'] = rule_octet_length_expression_
	rules['<offset row count>'] = rule_offset_row_count_
	rules['<order by clause: 1>'] = rule_order_by_clause_1_
	rules['<order by clause>'] = rule_order_by_clause_
	rules['<ordering specification: 1>'] = rule_ordering_specification_1_
	rules['<ordering specification: 2>'] = rule_ordering_specification_2_
	rules['<ordering specification>'] = rule_ordering_specification_
	rules['<ordinary grouping set>'] = rule_ordinary_grouping_set_
	rules['<outer join type>'] = rule_outer_join_type_
	rules['<parenthesized boolean value expression: 1>'] = rule_parenthesized_boolean_value_expression_1_
	rules['<parenthesized boolean value expression>'] = rule_parenthesized_boolean_value_expression_
	rules['<parenthesized derived column list: 1>'] = rule_parenthesized_derived_column_list_1_
	rules['<parenthesized derived column list>'] = rule_parenthesized_derived_column_list_
	rules['<parenthesized value expression: 1>'] = rule_parenthesized_value_expression_1_
	rules['<parenthesized value expression>'] = rule_parenthesized_value_expression_
	rules['<period>'] = rule_period_
	rules['<plus sign>'] = rule_plus_sign_
	rules['<position expression>'] = rule_position_expression_
	rules['<power function: 1>'] = rule_power_function_1_
	rules['<power function>'] = rule_power_function_
	rules['<precision>'] = rule_precision_
	rules['<predefined type>'] = rule_predefined_type_
	rules['<predicate>'] = rule_predicate_
	rules['<preparable SQL data statement>'] = rule_preparable_sql_data_statement_
	rules['<preparable SQL schema statement>'] = rule_preparable_sql_schema_statement_
	rules['<preparable SQL transaction statement>'] = rule_preparable_sql_transaction_statement_
	rules['<preparable statement>'] = rule_preparable_statement_
	rules['<qualified asterisk: 1>'] = rule_qualified_asterisk_1_
	rules['<qualified asterisk>'] = rule_qualified_asterisk_
	rules['<qualified identifier>'] = rule_qualified_identifier_
	rules['<qualified join: 1>'] = rule_qualified_join_1_
	rules['<qualified join: 2>'] = rule_qualified_join_2_
	rules['<qualified join>'] = rule_qualified_join_
	rules['<query expression body>'] = rule_query_expression_body_
	rules['<query expression: 1>'] = rule_query_expression_1_
	rules['<query expression: 2>'] = rule_query_expression_2_
	rules['<query expression: 3>'] = rule_query_expression_3_
	rules['<query expression: 4>'] = rule_query_expression_4_
	rules['<query expression: 5>'] = rule_query_expression_5_
	rules['<query expression: 6>'] = rule_query_expression_6_
	rules['<query expression: 7>'] = rule_query_expression_7_
	rules['<query expression: 8>'] = rule_query_expression_8_
	rules['<query expression>'] = rule_query_expression_
	rules['<query primary>'] = rule_query_primary_
	rules['<query specification: 1>'] = rule_query_specification_1_
	rules['<query specification>'] = rule_query_specification_
	rules['<query term>'] = rule_query_term_
	rules['<regular identifier>'] = rule_regular_identifier_
	rules['<result offset clause: 1>'] = rule_result_offset_clause_1_
	rules['<result offset clause>'] = rule_result_offset_clause_
	rules['<right paren>'] = rule_right_paren_
	rules['<rollback statement: 1>'] = rule_rollback_statement_1_
	rules['<rollback statement: 2>'] = rule_rollback_statement_2_
	rules['<rollback statement>'] = rule_rollback_statement_
	rules['<routine invocation: 1>'] = rule_routine_invocation_1_
	rules['<routine invocation>'] = rule_routine_invocation_
	rules['<routine name>'] = rule_routine_name_
	rules['<row or rows>'] = rule_row_or_rows_
	rules['<row subquery>'] = rule_row_subquery_
	rules['<row value constructor element list: 1>'] = rule_row_value_constructor_element_list_1_
	rules['<row value constructor element list: 2>'] = rule_row_value_constructor_element_list_2_
	rules['<row value constructor element list>'] = rule_row_value_constructor_element_list_
	rules['<row value constructor element>'] = rule_row_value_constructor_element_
	rules['<row value constructor predicand>'] = rule_row_value_constructor_predicand_
	rules['<row value constructor>'] = rule_row_value_constructor_
	rules['<row value expression list: 1>'] = rule_row_value_expression_list_1_
	rules['<row value expression list: 2>'] = rule_row_value_expression_list_2_
	rules['<row value expression list>'] = rule_row_value_expression_list_
	rules['<row value predicand>'] = rule_row_value_predicand_
	rules['<scale>'] = rule_scale_
	rules['<schema definition: 1>'] = rule_schema_definition_1_
	rules['<schema definition>'] = rule_schema_definition_
	rules['<schema name clause>'] = rule_schema_name_clause_
	rules['<schema name>'] = rule_schema_name_
	rules['<search condition>'] = rule_search_condition_
	rules['<select list: 1>'] = rule_select_list_1_
	rules['<select list: 3>'] = rule_select_list_3_
	rules['<select list>'] = rule_select_list_
	rules['<select sublist: 1>'] = rule_select_sublist_1_
	rules['<select sublist: 2>'] = rule_select_sublist_2_
	rules['<select sublist>'] = rule_select_sublist_
	rules['<set clause list: 2>'] = rule_set_clause_list_2_
	rules['<set clause list>'] = rule_set_clause_list_
	rules['<set clause: 1>'] = rule_set_clause_1_
	rules['<set clause>'] = rule_set_clause_
	rules['<set function specification>'] = rule_set_function_specification_
	rules['<set function type>'] = rule_set_function_type_
	rules['<set target>'] = rule_set_target_
	rules['<sign>'] = rule_sign_
	rules['<signed numeric literal: 1>'] = rule_signed_numeric_literal_1_
	rules['<signed numeric literal: 2>'] = rule_signed_numeric_literal_2_
	rules['<signed numeric literal>'] = rule_signed_numeric_literal_
	rules['<similar pattern>'] = rule_similar_pattern_
	rules['<similar predicate part 2: 1>'] = rule_similar_predicate_part_2_1_
	rules['<similar predicate part 2: 2>'] = rule_similar_predicate_part_2_2_
	rules['<similar predicate part 2>'] = rule_similar_predicate_part_2_
	rules['<similar predicate: 1>'] = rule_similar_predicate_1_
	rules['<similar predicate>'] = rule_similar_predicate_
	rules['<simple table>'] = rule_simple_table_
	rules['<simple value specification>'] = rule_simple_value_specification_
	rules['<solidus>'] = rule_solidus_
	rules['<sort key>'] = rule_sort_key_
	rules['<sort specification list: 1>'] = rule_sort_specification_list_1_
	rules['<sort specification list: 2>'] = rule_sort_specification_list_2_
	rules['<sort specification list>'] = rule_sort_specification_list_
	rules['<sort specification: 1>'] = rule_sort_specification_1_
	rules['<sort specification: 2>'] = rule_sort_specification_2_
	rules['<sort specification>'] = rule_sort_specification_
	rules['<SQL argument list: 1>'] = rule_sql_argument_list_1_
	rules['<SQL argument list: 2>'] = rule_sql_argument_list_2_
	rules['<SQL argument list: 3>'] = rule_sql_argument_list_3_
	rules['<SQL argument list>'] = rule_sql_argument_list_
	rules['<SQL argument>'] = rule_sql_argument_
	rules['<SQL schema definition statement>'] = rule_sql_schema_definition_statement_
	rules['<SQL schema manipulation statement>'] = rule_sql_schema_manipulation_statement_
	rules['<SQL schema statement>'] = rule_sql_schema_statement_
	rules['<SQL transaction statement>'] = rule_sql_transaction_statement_
	rules['<square root: 1>'] = rule_square_root_1_
	rules['<square root>'] = rule_square_root_
	rules['<start position>'] = rule_start_position_
	rules['<start transaction statement: 1>'] = rule_start_transaction_statement_1_
	rules['<start transaction statement>'] = rule_start_transaction_statement_
	rules['<string length>'] = rule_string_length_
	rules['<string value expression>'] = rule_string_value_expression_
	rules['<string value function>'] = rule_string_value_function_
	rules['<subquery: 1>'] = rule_subquery_1_
	rules['<subquery>'] = rule_subquery_
	rules['<table constraint definition>'] = rule_table_constraint_definition_
	rules['<table constraint>'] = rule_table_constraint_
	rules['<table contents source>'] = rule_table_contents_source_
	rules['<table definition: 1>'] = rule_table_definition_1_
	rules['<table definition>'] = rule_table_definition_
	rules['<table element list: 1>'] = rule_table_element_list_1_
	rules['<table element list>'] = rule_table_element_list_
	rules['<table element>'] = rule_table_element_
	rules['<table elements: 1>'] = rule_table_elements_1_
	rules['<table elements: 2>'] = rule_table_elements_2_
	rules['<table elements>'] = rule_table_elements_
	rules['<table expression: 1>'] = rule_table_expression_1_
	rules['<table expression: 2>'] = rule_table_expression_2_
	rules['<table expression: 3>'] = rule_table_expression_3_
	rules['<table expression: 4>'] = rule_table_expression_4_
	rules['<table expression>'] = rule_table_expression_
	rules['<table factor>'] = rule_table_factor_
	rules['<table name>'] = rule_table_name_
	rules['<table or query name>'] = rule_table_or_query_name_
	rules['<table primary: 1>'] = rule_table_primary_1_
	rules['<table primary: 2>'] = rule_table_primary_2_
	rules['<table primary: 3>'] = rule_table_primary_3_
	rules['<table primary>'] = rule_table_primary_
	rules['<table reference list>'] = rule_table_reference_list_
	rules['<table reference: 1>'] = rule_table_reference_1_
	rules['<table reference: 2>'] = rule_table_reference_2_
	rules['<table reference>'] = rule_table_reference_
	rules['<table row value expression>'] = rule_table_row_value_expression_
	rules['<table subquery>'] = rule_table_subquery_
	rules['<table value constructor: 1>'] = rule_table_value_constructor_1_
	rules['<table value constructor>'] = rule_table_value_constructor_
	rules['<target table>'] = rule_target_table_
	rules['<term: 2>'] = rule_term_2_
	rules['<term: 3>'] = rule_term_3_
	rules['<term>'] = rule_term_
	rules['<time fractional seconds precision>'] = rule_time_fractional_seconds_precision_
	rules['<time literal: 1>'] = rule_time_literal_1_
	rules['<time literal>'] = rule_time_literal_
	rules['<time precision>'] = rule_time_precision_
	rules['<time string>'] = rule_time_string_
	rules['<timestamp literal: 1>'] = rule_timestamp_literal_1_
	rules['<timestamp literal>'] = rule_timestamp_literal_
	rules['<timestamp precision>'] = rule_timestamp_precision_
	rules['<timestamp string>'] = rule_timestamp_string_
	rules['<trigonometric function name>'] = rule_trigonometric_function_name_
	rules['<trigonometric function: 1>'] = rule_trigonometric_function_1_
	rules['<trigonometric function>'] = rule_trigonometric_function_
	rules['<trim character>'] = rule_trim_character_
	rules['<trim function: 1>'] = rule_trim_function_1_
	rules['<trim function>'] = rule_trim_function_
	rules['<trim operands: 1>'] = rule_trim_operands_1_
	rules['<trim operands: 2>'] = rule_trim_operands_2_
	rules['<trim operands: 3>'] = rule_trim_operands_3_
	rules['<trim operands: 4>'] = rule_trim_operands_4_
	rules['<trim operands: 5>'] = rule_trim_operands_5_
	rules['<trim operands>'] = rule_trim_operands_
	rules['<trim source>'] = rule_trim_source_
	rules['<trim specification>'] = rule_trim_specification_
	rules['<truth value: 1>'] = rule_truth_value_1_
	rules['<truth value: 2>'] = rule_truth_value_2_
	rules['<truth value: 3>'] = rule_truth_value_3_
	rules['<truth value>'] = rule_truth_value_
	rules['<unique column list>'] = rule_unique_column_list_
	rules['<unique constraint definition: 1>'] = rule_unique_constraint_definition_1_
	rules['<unique constraint definition>'] = rule_unique_constraint_definition_
	rules['<unique specification: 1>'] = rule_unique_specification_1_
	rules['<unique specification>'] = rule_unique_specification_
	rules['<unqualified schema name>'] = rule_unqualified_schema_name_
	rules['<unsigned integer>'] = rule_unsigned_integer_
	rules['<unsigned literal>'] = rule_unsigned_literal_
	rules['<unsigned numeric literal>'] = rule_unsigned_numeric_literal_
	rules['<unsigned value specification: 1>'] = rule_unsigned_value_specification_1_
	rules['<unsigned value specification>'] = rule_unsigned_value_specification_
	rules['<update source>'] = rule_update_source_
	rules['<update statement: searched: 1>'] = rule_update_statement_searched_1_
	rules['<update statement: searched: 2>'] = rule_update_statement_searched_2_
	rules['<update statement: searched>'] = rule_update_statement_searched_
	rules['<update target>'] = rule_update_target_
	rules['<value expression primary>'] = rule_value_expression_primary_
	rules['<value expression>'] = rule_value_expression_
	rules['<where clause: 1>'] = rule_where_clause_1_
	rules['<where clause>'] = rule_where_clause_
	rules['<with or without time zone: 1>'] = rule_with_or_without_time_zone_1_
	rules['<with or without time zone: 2>'] = rule_with_or_without_time_zone_2_
	rules['<with or without time zone>'] = rule_with_or_without_time_zone_
	rules['^identifier'] = rule__identifier
	rules['^integer'] = rule__integer
	rules['^string'] = rule__string
	rules['ABS'] = rule_abs
	rules['ACOS'] = rule_acos
	rules['AND'] = rule_and
	rules['AS'] = rule_as
	rules['ASC'] = rule_asc
	rules['ASIN'] = rule_asin
	rules['ASYMMETRIC'] = rule_asymmetric
	rules['ATAN'] = rule_atan
	rules['AVG'] = rule_avg
	rules['BETWEEN'] = rule_between
	rules['BIGINT'] = rule_bigint
	rules['BOOLEAN'] = rule_boolean
	rules['BOTH'] = rule_both
	rules['BY'] = rule_by
	rules['CASCADE'] = rule_cascade
	rules['CEIL'] = rule_ceil
	rules['CEILING'] = rule_ceiling
	rules['CHAR'] = rule_char
	rules['CHAR_LENGTH'] = rule_char_length
	rules['CHARACTER'] = rule_character
	rules['CHARACTER_LENGTH'] = rule_character_length
	rules['CHARACTERS'] = rule_characters
	rules['COMMIT'] = rule_commit
	rules['COS'] = rule_cos
	rules['COSH'] = rule_cosh
	rules['COUNT'] = rule_count
	rules['CREATE'] = rule_create
	rules['CURRENT_DATE'] = rule_current_date
	rules['CURRENT_TIME'] = rule_current_time
	rules['CURRENT_TIMESTAMP'] = rule_current_timestamp
	rules['DATE'] = rule_date
	rules['DECIMAL'] = rule_decimal
	rules['DELETE'] = rule_delete
	rules['DESC'] = rule_desc
	rules['DOUBLE'] = rule_double
	rules['DROP'] = rule_drop
	rules['EXP'] = rule_exp
	rules['FALSE'] = rule_false
	rules['FETCH'] = rule_fetch
	rules['FIRST'] = rule_first
	rules['FLOAT'] = rule_float
	rules['FLOOR'] = rule_floor
	rules['FOR'] = rule_for
	rules['FROM'] = rule_from
	rules['GROUP'] = rule_group
	rules['IN'] = rule_in
	rules['INNER'] = rule_inner
	rules['INSERT'] = rule_insert
	rules['INT'] = rule_int
	rules['INTEGER'] = rule_integer
	rules['INTO'] = rule_into
	rules['IS'] = rule_is
	rules['JOIN'] = rule_join
	rules['KEY'] = rule_key
	rules['LEADING'] = rule_leading
	rules['LEFT'] = rule_left
	rules['LIKE'] = rule_like
	rules['LN'] = rule_ln
	rules['LOCALTIME'] = rule_localtime
	rules['LOCALTIMESTAMP'] = rule_localtimestamp
	rules['LOG10'] = rule_log10
	rules['LOWER'] = rule_lower
	rules['MAX'] = rule_max
	rules['MIN'] = rule_min
	rules['MOD'] = rule_mod
	rules['NOT'] = rule_not
	rules['NULL'] = rule_null
	rules['NUMERIC'] = rule_numeric
	rules['OCTET_LENGTH'] = rule_octet_length
	rules['OCTETS'] = rule_octets
	rules['OFFSET'] = rule_offset
	rules['ON'] = rule_on
	rules['ONLY'] = rule_only
	rules['OR'] = rule_or
	rules['ORDER'] = rule_order
	rules['OUTER'] = rule_outer
	rules['POSITION'] = rule_position
	rules['POWER'] = rule_power
	rules['PRECISION'] = rule_precision
	rules['PRIMARY'] = rule_primary
	rules['REAL'] = rule_real
	rules['RESTRICT'] = rule_restrict
	rules['RIGHT'] = rule_right
	rules['ROLLBACK'] = rule_rollback
	rules['ROW'] = rule_row
	rules['ROWS'] = rule_rows
	rules['SCHEMA'] = rule_schema
	rules['SELECT'] = rule_select
	rules['SET'] = rule_set
	rules['SIMILAR'] = rule_similar
	rules['SIN'] = rule_sin
	rules['SINH'] = rule_sinh
	rules['SMALLINT'] = rule_smallint
	rules['SQRT'] = rule_sqrt
	rules['START'] = rule_start
	rules['SUBSTRING'] = rule_substring
	rules['SUM'] = rule_sum
	rules['SYMMETRIC'] = rule_symmetric
	rules['TABLE'] = rule_table
	rules['TAN'] = rule_tan
	rules['TANH'] = rule_tanh
	rules['TIME'] = rule_time
	rules['TIMESTAMP'] = rule_timestamp
	rules['TO'] = rule_to
	rules['TRAILING'] = rule_trailing
	rules['TRANSACTION'] = rule_transaction
	rules['TRIM'] = rule_trim
	rules['TRUE'] = rule_true
	rules['UNKNOWN'] = rule_unknown
	rules['UPDATE'] = rule_update
	rules['UPPER'] = rule_upper
	rules['USING'] = rule_using
	rules['VALUES'] = rule_values
	rules['VARCHAR'] = rule_varchar
	rules['VARYING'] = rule_varying
	rules['WHERE'] = rule_where
	rules['WITH'] = rule_with
	rules['WITHOUT'] = rule_without
	rules['WORK'] = rule_work
	rules['ZONE'] = rule_zone

	return rules
}

fn parse_ast(node &EarleyNode) ?[]EarleyValue {
	if node.children.len == 0 {
		match node.value.name {
			'^integer' {
				return [EarleyValue(node.value.end_column.value)]
			}
			'^identifier' {
				return [EarleyValue(new_identifier(node.value.end_column.value))]
			}
			'^string' {
				return [
					EarleyValue(new_varchar_value(node.value.end_column.value, 0)),
				]
			}
			else {
				if node.value.name[0] == `<` {
					return [EarleyValue(node.value.end_column.value)]
				}

				if node.value.name.is_upper() {
					return [EarleyValue(node.value.name)]
				}

				panic(node.value.name)
				return []EarleyValue{}
			}
		}
	}

	mut children := []EarleyValue{}
	for child in node.children {
		for result in parse_ast(child)? {
			children << result
		}
	}

	return parse_ast_name(children, node.value.name)
}

fn parse_ast_name(children []EarleyValue, name string) ?[]EarleyValue {
	match name {
		'<absolute value expression: 1>' {
			return [EarleyValue(parse_abs(children[2] as Expr)?)]
		}
		'<aggregate function: 1>' {
			return [EarleyValue(parse_count_all(children[2] as string)?)]
		}
		'<approximate numeric type: 1>' {
			return [EarleyValue(parse_float()?)]
		}
		'<approximate numeric type: 2>' {
			return [EarleyValue(parse_float_n(children[2] as string)?)]
		}
		'<approximate numeric type: 3>' {
			return [EarleyValue(parse_real()?)]
		}
		'<approximate numeric type: 4>' {
			return [EarleyValue(parse_double_precision()?)]
		}
		'<as clause: 1>' {
			return [EarleyValue(parse_identifier(children[1] as Identifier)?)]
		}
		'<between predicate part 1: 1>' {
			return [EarleyValue(parse_yes()?)]
		}
		'<between predicate part 1: 2>' {
			return [EarleyValue(parse_no()?)]
		}
		'<between predicate part 2: 1>' {
			return [
				EarleyValue(parse_between1(children[0] as bool, children[1] as Expr, children[3] as Expr)?),
			]
		}
		'<between predicate part 2: 2>' {
			return [
				EarleyValue(parse_between2(children[0] as bool, children[1] as bool, children[2] as Expr,
					children[4] as Expr)?),
			]
		}
		'<between predicate: 1>' {
			return [
				EarleyValue(parse_between(children[0] as Expr, children[1] as BetweenExpr)?),
			]
		}
		'<boolean factor: 2>' {
			return [EarleyValue(parse_not(children[1] as Expr)?)]
		}
		'<boolean literal: 1>' {
			return [EarleyValue(parse_true()?)]
		}
		'<boolean literal: 2>' {
			return [EarleyValue(parse_false()?)]
		}
		'<boolean literal: 3>' {
			return [EarleyValue(parse_unknown()?)]
		}
		'<boolean term: 2>' {
			return [
				EarleyValue(parse_and(children[0] as Expr, children[2] as Expr)?),
			]
		}
		'<boolean test: 2>' {
			return [
				EarleyValue(parse_boolean_test1(children[0] as Expr, children[2] as Value)?),
			]
		}
		'<boolean test: 3>' {
			return [
				EarleyValue(parse_boolean_test2(children[0] as Expr, children[3] as Value)?),
			]
		}
		'<boolean type: 1>' {
			return [EarleyValue(parse_boolean_type()?)]
		}
		'<boolean value expression: 2>' {
			return [EarleyValue(parse_or(children[0] as Expr, children[2] as Expr)?)]
		}
		'<ceiling function: 1>' {
			return [EarleyValue(parse_ceiling(children[2] as Expr)?)]
		}
		'<ceiling function: 2>' {
			return [EarleyValue(parse_ceiling(children[2] as Expr)?)]
		}
		'<char length expression: 1>' {
			return [EarleyValue(parse_char_length(children[2] as Expr)?)]
		}
		'<char length expression: 2>' {
			return [EarleyValue(parse_char_length(children[2] as Expr)?)]
		}
		'<character like predicate part 2: 1>' {
			return [EarleyValue(parse_like(children[1] as Expr)?)]
		}
		'<character like predicate part 2: 2>' {
			return [EarleyValue(parse_not_like(children[2] as Expr)?)]
		}
		'<character like predicate: 1>' {
			return [
				EarleyValue(parse_like_pred(children[0] as Expr, children[1] as LikeExpr)?),
			]
		}
		'<character position expression: 1>' {
			return [
				EarleyValue(parse_position(children[2] as Expr, children[4] as Expr)?),
			]
		}
		'<character string type: 1>' {
			return [EarleyValue(parse_character()?)]
		}
		'<character string type: 2>' {
			return [EarleyValue(parse_character_n(children[2] as string)?)]
		}
		'<character string type: 3>' {
			return [EarleyValue(parse_character()?)]
		}
		'<character string type: 4>' {
			return [EarleyValue(parse_character_n(children[2] as string)?)]
		}
		'<character string type: 5>' {
			return [EarleyValue(parse_varchar(children[3] as string)?)]
		}
		'<character string type: 6>' {
			return [EarleyValue(parse_varchar(children[3] as string)?)]
		}
		'<character string type: 7>' {
			return [EarleyValue(parse_varchar(children[2] as string)?)]
		}
		'<character substring function: 1>' {
			return [
				EarleyValue(parse_substring1(children[2] as Expr, children[4] as Expr)?),
			]
		}
		'<character substring function: 2>' {
			return [
				EarleyValue(parse_substring2(children[2] as Expr, children[4] as Expr,
					children[6] as Expr)?),
			]
		}
		'<character substring function: 3>' {
			return [
				EarleyValue(parse_substring3(children[2] as Expr, children[4] as Expr,
					children[6] as string)?),
			]
		}
		'<character substring function: 4>' {
			return [
				EarleyValue(parse_substring4(children[2] as Expr, children[4] as Expr,
					children[6] as Expr, children[8] as string)?),
			]
		}
		'<column constraint: 1>' {
			return [EarleyValue(parse_yes()?)]
		}
		'<column definition: 1>' {
			return [
				EarleyValue(parse_column_definition1(children[0] as Identifier, children[1] as Type)?),
			]
		}
		'<column definition: 2>' {
			return [
				EarleyValue(parse_column_definition2(children[0] as Identifier, children[1] as Type,
					children[2] as bool)?),
			]
		}
		'<column name list: 1>' {
			return [EarleyValue(parse_column_name_list1(children[0] as Identifier)?)]
		}
		'<column name list: 2>' {
			return [
				EarleyValue(parse_column_name_list2(children[0] as []Identifier, children[2] as Identifier)?),
			]
		}
		'<commit statement: 1>' {
			return [EarleyValue(parse_commit()?)]
		}
		'<commit statement: 2>' {
			return [EarleyValue(parse_commit()?)]
		}
		'<common logarithm: 1>' {
			return [EarleyValue(parse_log10(children[2] as Expr)?)]
		}
		'<comparison predicate part 2: 1>' {
			return [
				EarleyValue(parse_comparison_part(children[0] as string, children[1] as Expr)?),
			]
		}
		'<comparison predicate: 1>' {
			return [
				EarleyValue(parse_comparison(children[0] as Expr, children[1] as ComparisonPredicatePart2)?),
			]
		}
		'<concatenation: 1>' {
			return [
				EarleyValue(parse_concatenation(children[0] as Expr, children[2] as Expr)?),
			]
		}
		'<contextually typed row value constructor element list: 1>' {
			return [EarleyValue(parse_expr_to_list(children[0] as Expr)?)]
		}
		'<contextually typed row value constructor element list: 2>' {
			return [
				EarleyValue(parse_append_exprs1(children[0] as []Expr, children[2] as Expr)?),
			]
		}
		'<contextually typed row value constructor: 1>' {
			return [EarleyValue(parse_expr_to_list(children[0] as Expr)?)]
		}
		'<contextually typed row value constructor: 2>' {
			return [EarleyValue(parse_expr_to_list(children[0] as Expr)?)]
		}
		'<contextually typed row value constructor: 3>' {
			return [EarleyValue(parse_expr_to_list(children[0] as Expr)?)]
		}
		'<contextually typed row value constructor: 4>' {
			return [EarleyValue(parse_expr_to_list(children[1] as Expr)?)]
		}
		'<contextually typed row value constructor: 5>' {
			return [
				EarleyValue(parse_append_exprs2(children[1] as Expr, children[3] as []Expr)?),
			]
		}
		'<contextually typed row value expression list: 2>' {
			return [
				EarleyValue(parse_merge_expr_lists(children[0] as []Expr, children[2] as []Expr)?),
			]
		}
		'<contextually typed table value constructor: 1>' {
			return [EarleyValue(parse_exprs(children[1] as []Expr)?)]
		}
		'<correlation or recognition: 1>' {
			return [EarleyValue(parse_correlation1(children[0] as Identifier)?)]
		}
		'<correlation or recognition: 2>' {
			return [EarleyValue(parse_correlation1(children[1] as Identifier)?)]
		}
		'<correlation or recognition: 3>' {
			return [
				EarleyValue(parse_correlation2(children[0] as Identifier, children[1] as []Identifier)?),
			]
		}
		'<correlation or recognition: 4>' {
			return [
				EarleyValue(parse_correlation2(children[1] as Identifier, children[2] as []Identifier)?),
			]
		}
		'<current date value function: 1>' {
			return [EarleyValue(parse_current_date()?)]
		}
		'<current local time value function: 1>' {
			return [EarleyValue(parse_localtime1()?)]
		}
		'<current local time value function: 2>' {
			return [EarleyValue(parse_localtime2(children[2] as string)?)]
		}
		'<current local timestamp value function: 1>' {
			return [EarleyValue(parse_localtimestamp1()?)]
		}
		'<current local timestamp value function: 2>' {
			return [EarleyValue(parse_localtimestamp2(children[2] as string)?)]
		}
		'<current time value function: 1>' {
			return [EarleyValue(parse_current_time1()?)]
		}
		'<current time value function: 2>' {
			return [EarleyValue(parse_current_time2(children[2] as string)?)]
		}
		'<current timestamp value function: 1>' {
			return [EarleyValue(parse_current_timestamp1()?)]
		}
		'<current timestamp value function: 2>' {
			return [EarleyValue(parse_current_timestamp2(children[2] as string)?)]
		}
		'<cursor specification: 1>' {
			return [
				EarleyValue(parse_cursor_specification(children[0] as QueryExpression)?),
			]
		}
		'<date literal: 1>' {
			return [EarleyValue(parse_date_literal(children[1] as Value)?)]
		}
		'<datetime type: 1>' {
			return [EarleyValue(parse_date_type()?)]
		}
		'<datetime type: 2>' {
			return [EarleyValue(parse_time_type()?)]
		}
		'<datetime type: 3>' {
			return [EarleyValue(parse_time_prec_type(children[2] as string)?)]
		}
		'<datetime type: 4>' {
			return [EarleyValue(parse_time_tz_type(children[1] as bool)?)]
		}
		'<datetime type: 5>' {
			return [
				EarleyValue(parse_time_prec_tz_type(children[2] as string, children[4] as bool)?),
			]
		}
		'<datetime type: 6>' {
			return [EarleyValue(parse_timestamp_type()?)]
		}
		'<datetime type: 7>' {
			return [EarleyValue(parse_timestamp_prec_type(children[2] as string)?)]
		}
		'<datetime type: 8>' {
			return [EarleyValue(parse_timestamp_tz_type(children[1] as bool)?)]
		}
		'<datetime type: 9>' {
			return [
				EarleyValue(parse_timestamp_prec_tz_type(children[2] as string, children[4] as bool)?),
			]
		}
		'<delete statement: searched: 1>' {
			return [EarleyValue(parse_delete_statement(children[2] as Identifier)?)]
		}
		'<delete statement: searched: 2>' {
			return [
				EarleyValue(parse_delete_statement_where(children[2] as Identifier, children[4] as Expr)?),
			]
		}
		'<derived column: 1>' {
			return [EarleyValue(parse_derived_column(children[0] as Expr)?)]
		}
		'<derived column: 2>' {
			return [
				EarleyValue(parse_derived_column_as(children[0] as Expr, children[1] as Identifier)?),
			]
		}
		'<drop schema statement: 1>' {
			return [
				EarleyValue(parse_drop_schema_statement(children[2] as Identifier, children[3] as string)?),
			]
		}
		'<drop table statement: 1>' {
			return [
				EarleyValue(parse_drop_table_statement(children[2] as Identifier)?),
			]
		}
		'<exact numeric literal: 1>' {
			return [
				EarleyValue(parse_exact_numeric_literal1(children[0] as string)?),
			]
		}
		'<exact numeric literal: 2>' {
			return [
				EarleyValue(parse_exact_numeric_literal2(children[0] as string)?),
			]
		}
		'<exact numeric literal: 3>' {
			return [
				EarleyValue(parse_exact_numeric_literal3(children[0] as string, children[2] as string)?),
			]
		}
		'<exact numeric literal: 4>' {
			return [
				EarleyValue(parse_exact_numeric_literal4(children[1] as string)?),
			]
		}
		'<exact numeric type: 10>' {
			return [EarleyValue(parse_bigint()?)]
		}
		'<exact numeric type: 1>' {
			return [EarleyValue(parse_numeric1()?)]
		}
		'<exact numeric type: 2>' {
			return [EarleyValue(parse_numeric2(children[2] as string)?)]
		}
		'<exact numeric type: 3>' {
			return [
				EarleyValue(parse_numeric3(children[2] as string, children[4] as int)?),
			]
		}
		'<exact numeric type: 4>' {
			return [EarleyValue(parse_decimal1()?)]
		}
		'<exact numeric type: 5>' {
			return [EarleyValue(parse_decimal2(children[2] as string)?)]
		}
		'<exact numeric type: 6>' {
			return [
				EarleyValue(parse_decimal3(children[2] as string, children[4] as int)?),
			]
		}
		'<exact numeric type: 7>' {
			return [EarleyValue(parse_smallint()?)]
		}
		'<exact numeric type: 8>' {
			return [EarleyValue(parse_integer()?)]
		}
		'<exact numeric type: 9>' {
			return [EarleyValue(parse_integer()?)]
		}
		'<explicit row value constructor: 1>' {
			return [EarleyValue(parse_row_constructor1(children[2] as []Expr)?)]
		}
		'<explicit row value constructor: 2>' {
			return [
				EarleyValue(parse_row_constructor2(children[0] as QueryExpression)?),
			]
		}
		'<exponential function: 1>' {
			return [EarleyValue(parse_exp(children[2] as Expr)?)]
		}
		'<factor: 2>' {
			return [
				EarleyValue(parse_sign_expr(children[0] as string, children[1] as Expr)?),
			]
		}
		'<fetch first clause: 1>' {
			return [EarleyValue(parse_fetch_first_clause(children[2] as Expr)?)]
		}
		'<floor function: 1>' {
			return [EarleyValue(parse_floor(children[2] as Expr)?)]
		}
		'<fold: 1>' {
			return [EarleyValue(parse_upper(children[2] as Expr)?)]
		}
		'<fold: 2>' {
			return [EarleyValue(parse_lower(children[2] as Expr)?)]
		}
		'<from clause: 1>' {
			return [EarleyValue(parse_from_clause(children[1] as TableReference)?)]
		}
		'<from constructor: 1>' {
			return [
				EarleyValue(parse_from_constructor(children[1] as []Identifier, children[3] as []Expr)?),
			]
		}
		'<general set function: 1>' {
			return [
				EarleyValue(parse_general_set_function(children[0] as string, children[2] as Expr)?),
			]
		}
		'<group by clause: 1>' {
			return [EarleyValue(parse_exprs(children[2] as []Expr)?)]
		}
		'<grouping column reference: 1>' {
			return [
				EarleyValue(parse_identifier_to_expr(children[0] as Identifier)?),
			]
		}
		'<grouping element list: 1>' {
			return [EarleyValue(parse_expr_to_list(children[0] as Expr)?)]
		}
		'<grouping element list: 2>' {
			return [
				EarleyValue(parse_append_exprs1(children[0] as []Expr, children[2] as Expr)?),
			]
		}
		'<host parameter name: 1>' {
			return [
				EarleyValue(parse_host_parameter_name(children[1] as Identifier)?),
			]
		}
		'<identifier chain: 2>' {
			return [
				EarleyValue(parse_identifier_chain1(children[0] as Identifier, children[2] as Identifier)?),
			]
		}
		'<insert statement: 1>' {
			return [
				EarleyValue(parse_insert_statement(children[2] as Identifier, children[3] as InsertStmt)?),
			]
		}
		'<is symmetric: 1>' {
			return [EarleyValue(parse_yes()?)]
		}
		'<is symmetric: 2>' {
			return [EarleyValue(parse_no()?)]
		}
		'<join condition: 1>' {
			return [EarleyValue(parse_expr(children[1] as Expr)?)]
		}
		'<join type: 3>' {
			return [EarleyValue(parse_string(children[0] as string)?)]
		}
		'<literal: 2>' {
			return [EarleyValue(parse_value_to_expr(children[0] as Value)?)]
		}
		'<local or schema qualified name: 2>' {
			return [
				EarleyValue(parse_local_or_schema_qualified_name2(children[0] as Identifier,
					children[2] as Identifier)?),
			]
		}
		'<modulus expression: 1>' {
			return [
				EarleyValue(parse_mod(children[2] as Expr, children[4] as Expr)?),
			]
		}
		'<natural logarithm: 1>' {
			return [EarleyValue(parse_ln(children[2] as Expr)?)]
		}
		'<nonparenthesized value expression primary: 2>' {
			return [
				EarleyValue(parse_identifier_to_expr(children[0] as Identifier)?),
			]
		}
		'<null predicate part 2: 1>' {
			return [EarleyValue(parse_yes()?)]
		}
		'<null predicate part 2: 2>' {
			return [EarleyValue(parse_no()?)]
		}
		'<null predicate: 1>' {
			return [
				EarleyValue(parse_null_predicate(children[0] as Expr, children[1] as bool)?),
			]
		}
		'<null specification: 1>' {
			return [EarleyValue(parse_null()?)]
		}
		'<numeric value expression: 2>' {
			return [
				EarleyValue(parse_binary_expr(children[0] as Expr, children[1] as string,
					children[2] as Expr)?),
			]
		}
		'<numeric value expression: 3>' {
			return [
				EarleyValue(parse_binary_expr(children[0] as Expr, children[1] as string,
					children[2] as Expr)?),
			]
		}
		'<octet length expression: 1>' {
			return [EarleyValue(parse_octet_length(children[2] as Expr)?)]
		}
		'<order by clause: 1>' {
			return [EarleyValue(parse_order_by(children[2] as []SortSpecification)?)]
		}
		'<ordering specification: 1>' {
			return [EarleyValue(parse_yes()?)]
		}
		'<ordering specification: 2>' {
			return [EarleyValue(parse_no()?)]
		}
		'<parenthesized boolean value expression: 1>' {
			return [EarleyValue(parse_expr(children[1] as Expr)?)]
		}
		'<parenthesized derived column list: 1>' {
			return [
				EarleyValue(parse_parenthesized_derived_column_list(children[1] as []Identifier)?),
			]
		}
		'<parenthesized value expression: 1>' {
			return [EarleyValue(parse_expr(children[1] as Expr)?)]
		}
		'<power function: 1>' {
			return [
				EarleyValue(parse_power(children[2] as Expr, children[4] as Expr)?),
			]
		}
		'<qualified asterisk: 1>' {
			return [
				EarleyValue(parse_qualified_asterisk(children[0] as Identifier, children[2] as string)?),
			]
		}
		'<qualified join: 1>' {
			return [
				EarleyValue(parse_qualified_join1(children[0] as TableReference, children[2] as TableReference,
					children[3] as Expr)?),
			]
		}
		'<qualified join: 2>' {
			return [
				EarleyValue(parse_qualified_join2(children[0] as TableReference, children[1] as string,
					children[3] as TableReference, children[4] as Expr)?),
			]
		}
		'<query expression: 1>' {
			return [EarleyValue(parse_query_expression(children[0] as SimpleTable)?)]
		}
		'<query expression: 2>' {
			return [
				EarleyValue(parse_query_expression_order(children[0] as SimpleTable, children[1] as []SortSpecification)?),
			]
		}
		'<query expression: 3>' {
			return [
				EarleyValue(parse_query_expression_offset(children[0] as SimpleTable,
					children[1] as Expr)?),
			]
		}
		'<query expression: 4>' {
			return [
				EarleyValue(parse_query_expression_order_offset(children[0] as SimpleTable,
					children[1] as []SortSpecification, children[2] as Expr)?),
			]
		}
		'<query expression: 5>' {
			return [
				EarleyValue(parse_query_expression_fetch(children[0] as SimpleTable, children[1] as Expr)?),
			]
		}
		'<query expression: 6>' {
			return [
				EarleyValue(parse_query_expression_order_fetch(children[0] as SimpleTable,
					children[1] as []SortSpecification, children[2] as Expr)?),
			]
		}
		'<query expression: 7>' {
			return [
				EarleyValue(parse_query_expression_order_offset_fetch(children[0] as SimpleTable,
					children[1] as []SortSpecification, children[2] as Expr, children[3] as Expr)?),
			]
		}
		'<query expression: 8>' {
			return [
				EarleyValue(parse_query_expression_offset_fetch(children[0] as SimpleTable,
					children[1] as Expr, children[2] as Expr)?),
			]
		}
		'<query specification: 1>' {
			return [
				EarleyValue(parse_query_specification(children[1] as SelectList, children[2] as TableExpression)?),
			]
		}
		'<result offset clause: 1>' {
			return [EarleyValue(parse_expr(children[1] as Expr)?)]
		}
		'<rollback statement: 1>' {
			return [EarleyValue(parse_rollback()?)]
		}
		'<rollback statement: 2>' {
			return [EarleyValue(parse_rollback()?)]
		}
		'<routine invocation: 1>' {
			return [
				EarleyValue(parse_routine_invocation(children[0] as Identifier, children[1] as []Expr)?),
			]
		}
		'<row value constructor element list: 1>' {
			return [EarleyValue(parse_expr_to_list(children[0] as Expr)?)]
		}
		'<row value constructor element list: 2>' {
			return [
				EarleyValue(parse_append_exprs1(children[0] as []Expr, children[2] as Expr)?),
			]
		}
		'<row value expression list: 1>' {
			return [EarleyValue(parse_expr_to_list(children[0] as Expr)?)]
		}
		'<row value expression list: 2>' {
			return [
				EarleyValue(parse_append_exprs1(children[0] as []Expr, children[2] as Expr)?),
			]
		}
		'<schema definition: 1>' {
			return [EarleyValue(parse_schema_definition(children[2] as Identifier)?)]
		}
		'<select list: 1>' {
			return [EarleyValue(parse_asterisk(children[0] as string)?)]
		}
		'<select list: 3>' {
			return [
				EarleyValue(parse_select_list2(children[0] as SelectList, children[2] as SelectList)?),
			]
		}
		'<select sublist: 1>' {
			return [
				EarleyValue(parse_select_sublist1(children[0] as DerivedColumn)?),
			]
		}
		'<select sublist: 2>' {
			return [
				EarleyValue(parse_select_sublist2(children[0] as QualifiedAsteriskExpr)?),
			]
		}
		'<set clause list: 2>' {
			return [
				EarleyValue(parse_set_clause_append(children[0] as map[string]Expr, children[2] as map[string]Expr)?),
			]
		}
		'<set clause: 1>' {
			return [
				EarleyValue(parse_set_clause(children[0] as Identifier, children[2] as Expr)?),
			]
		}
		'<signed numeric literal: 1>' {
			return [EarleyValue(parse_value_to_expr(children[0] as Value)?)]
		}
		'<signed numeric literal: 2>' {
			return [
				EarleyValue(parse_sign_expr(children[0] as string, children[1] as Value)?),
			]
		}
		'<similar predicate part 2: 1>' {
			return [EarleyValue(parse_similar(children[2] as Expr)?)]
		}
		'<similar predicate part 2: 2>' {
			return [EarleyValue(parse_not_similar(children[3] as Expr)?)]
		}
		'<similar predicate: 1>' {
			return [
				EarleyValue(parse_similar_pred(children[0] as Expr, children[1] as SimilarExpr)?),
			]
		}
		'<sort specification list: 1>' {
			return [EarleyValue(parse_sort_list1(children[0] as SortSpecification)?)]
		}
		'<sort specification list: 2>' {
			return [
				EarleyValue(parse_sort_list2(children[0] as []SortSpecification, children[2] as SortSpecification)?),
			]
		}
		'<sort specification: 1>' {
			return [EarleyValue(parse_sort1(children[0] as Expr)?)]
		}
		'<sort specification: 2>' {
			return [
				EarleyValue(parse_sort2(children[0] as Expr, children[1] as bool)?),
			]
		}
		'<SQL argument list: 1>' {
			return [EarleyValue(parse_empty_exprs()?)]
		}
		'<SQL argument list: 2>' {
			return [EarleyValue(parse_expr_to_list(children[1] as Expr)?)]
		}
		'<SQL argument list: 3>' {
			return [
				EarleyValue(parse_append_exprs1(children[1] as []Expr, children[3] as Expr)?),
			]
		}
		'<square root: 1>' {
			return [EarleyValue(parse_sqrt(children[2] as Expr)?)]
		}
		'<start transaction statement: 1>' {
			return [EarleyValue(parse_start_transaction()?)]
		}
		'<subquery: 1>' {
			return [EarleyValue(parse_subquery(children[1] as QueryExpression)?)]
		}
		'<table definition: 1>' {
			return [
				EarleyValue(parse_table_definition(children[2] as Identifier, children[3] as []TableElement)?),
			]
		}
		'<table element list: 1>' {
			return [
				EarleyValue(parse_table_element_list(children[1] as []TableElement)?),
			]
		}
		'<table elements: 1>' {
			return [EarleyValue(parse_table_elements1(children[0] as TableElement)?)]
		}
		'<table elements: 2>' {
			return [
				EarleyValue(parse_table_elements2(children[0] as []TableElement, children[2] as TableElement)?),
			]
		}
		'<table expression: 1>' {
			return [
				EarleyValue(parse_table_expression(children[0] as TableReference)?),
			]
		}
		'<table expression: 2>' {
			return [
				EarleyValue(parse_table_expression_where(children[0] as TableReference,
					children[1] as Expr)?),
			]
		}
		'<table expression: 3>' {
			return [
				EarleyValue(parse_table_expression_group(children[0] as TableReference,
					children[1] as []Expr)?),
			]
		}
		'<table expression: 4>' {
			return [
				EarleyValue(parse_table_expression_where_group(children[0] as TableReference,
					children[1] as Expr, children[2] as []Expr)?),
			]
		}
		'<table primary: 1>' {
			return [
				EarleyValue(parse_table_primary_identifier(children[0] as Identifier)?),
			]
		}
		'<table primary: 2>' {
			return [
				EarleyValue(parse_table_primary_derived1(children[0] as TablePrimary)?),
			]
		}
		'<table primary: 3>' {
			return [
				EarleyValue(parse_table_primary_derived2(children[0] as TablePrimary,
					children[1] as Correlation)?),
			]
		}
		'<table reference: 1>' {
			return [EarleyValue(parse_table_factor(children[0] as TablePrimary)?)]
		}
		'<table reference: 2>' {
			return [EarleyValue(parse_joined_table(children[0] as QualifiedJoin)?)]
		}
		'<table value constructor: 1>' {
			return [
				EarleyValue(parse_table_value_constructor(children[1] as []Expr)?),
			]
		}
		'<term: 2>' {
			return [
				EarleyValue(parse_binary_expr(children[0] as Expr, children[1] as string,
					children[2] as Expr)?),
			]
		}
		'<term: 3>' {
			return [
				EarleyValue(parse_binary_expr(children[0] as Expr, children[1] as string,
					children[2] as Expr)?),
			]
		}
		'<time literal: 1>' {
			return [EarleyValue(parse_time_literal(children[1] as Value)?)]
		}
		'<timestamp literal: 1>' {
			return [EarleyValue(parse_timestamp_literal(children[1] as Value)?)]
		}
		'<trigonometric function: 1>' {
			return [
				EarleyValue(parse_trig_func(children[0] as string, children[2] as Expr)?),
			]
		}
		'<trim function: 1>' {
			return [EarleyValue(parse_trim(children[2] as Expr)?)]
		}
		'<trim operands: 1>' {
			return [EarleyValue(parse_trim1(children[0] as Expr)?)]
		}
		'<trim operands: 2>' {
			return [EarleyValue(parse_trim1(children[1] as Expr)?)]
		}
		'<trim operands: 3>' {
			return [
				EarleyValue(parse_trim2(children[0] as string, children[2] as Expr)?),
			]
		}
		'<trim operands: 4>' {
			return [
				EarleyValue(parse_trim3(children[0] as Expr, children[2] as Expr)?),
			]
		}
		'<trim operands: 5>' {
			return [
				EarleyValue(parse_trim4(children[0] as string, children[1] as Expr, children[3] as Expr)?),
			]
		}
		'<truth value: 1>' {
			return [EarleyValue(parse_true()?)]
		}
		'<truth value: 2>' {
			return [EarleyValue(parse_false()?)]
		}
		'<truth value: 3>' {
			return [EarleyValue(parse_unknown()?)]
		}
		'<unique constraint definition: 1>' {
			return [
				EarleyValue(parse_unique_constraint_definition(children[2] as []Identifier)?),
			]
		}
		'<unique specification: 1>' {
			return [EarleyValue(parse_ignore()?)]
		}
		'<unsigned value specification: 1>' {
			return [EarleyValue(parse_value_to_expr(children[0] as Value)?)]
		}
		'<update statement: searched: 1>' {
			return [
				EarleyValue(parse_update_statement(children[1] as Identifier, children[3] as map[string]Expr)?),
			]
		}
		'<update statement: searched: 2>' {
			return [
				EarleyValue(parse_update_statement_where(children[1] as Identifier, children[3] as map[string]Expr,
					children[5] as Expr)?),
			]
		}
		'<where clause: 1>' {
			return [EarleyValue(parse_expr(children[1] as Expr)?)]
		}
		'<with or without time zone: 1>' {
			return [EarleyValue(parse_yes()?)]
		}
		'<with or without time zone: 2>' {
			return [EarleyValue(parse_no()?)]
		}
		else {
			return children
		}
	}
}
