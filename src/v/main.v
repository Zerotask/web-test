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
* @endpoint GET /
*/
pub fn (mut app App) index() vweb.Result {
	return app.text('Hello from V!')
}

/*
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