module main

import vweb
import json

const port = 14789

struct App {
	vweb.Context
}

struct Product {
	id    int
	name  string
	price f32
}

// Start the web server
fn main() {
	vweb.run<App>(port)
}

/*
 *
 * A simple text response
 * 
 * @endpoint GET /
 */
pub fn (mut app App) index() vweb.Result {
	return app.text('Hello from V!')
}

/*
 * A simple JSON response
 *
 * @endpoint GET /products
 */
pub fn (mut app App) products() vweb.Result {
	// This could come from a database
	products := [
		Product{1, 'Coffee machine', 299.99},
		Product{2, 'Playstation 5', 499.99},
	]

	return app.json(json.encode(products))
}

/*
 *
 * A simple addition
 * 
 * @endpoint GET /calculators/add/:value1/:value2
 */
['/calculators/add/:value1/:value2']
pub fn (mut app App) add_two_values(value1 int, value2 int) vweb.Result {
	result := value1 + value2
	return app.json(result.str())
}

/*
 *
 * A simple multiplication
 * 
 * @endpoint POST /calculators/add/:value1/:value2
 */
['/calculators/multiply/:value1/:value2']
[post]
pub fn (mut app App) multiply_two_values(value1 int, value2 int) vweb.Result {
	result := value1 * value2
	return app.json(result.str())
}
