import math
import os
import vsql

fn main() {
	os.rm('test.vsql') or {}
	example() or { panic(err) }
}

fn example() ? {
	mut db := vsql.open('test.vsql')?

	// no_pennies will round to 0.05 denominations.
	db.register_function('no_pennies(float) float', fn (a []vsql.Value) ?vsql.Value {
		amount := math.round(a[0].f64_value() / 0.05) * 0.05
		return vsql.new_double_precision_value(amount)
	})?

	db.query('CREATE TABLE products (product_name VARCHAR(100), price FLOAT)')?
	db.query("INSERT INTO products (product_name, price) VALUES ('Ice Cream', 5.99)")?
	db.query("INSERT INTO products (product_name, price) VALUES ('Ham Sandwhich', 3.47)")?
	db.query("INSERT INTO products (product_name, price) VALUES ('Bagel', 1.25)")?

	result := db.query('SELECT product_name, no_pennies(price) as total FROM products')?
	for row in result {
		total := row.get_f64('TOTAL')?
		println('${row.get_string('PRODUCT_NAME')?} $${total:.2f}')
	}
}
