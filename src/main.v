import math

fn main() {
	println(math.add(3, 8))

	names := ['Bob', 'Alice', 'Harold']

	if 'Alice' in names {
		println('Alice is here.')
	}

	for name in names {
		println('Hello $name!')
	}
}
