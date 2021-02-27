import math
import os

fn main() {
	name_input := os.input('Enter your name please: ')
	println('Hello $name_input')

	println(math.add(3, 8))

	names := ['Bob', 'Alice', 'Harold']

	if 'Alice' in names {
		println('Alice is here.')
	}

	for name in names {
		println('Hello $name!')
	}
}
