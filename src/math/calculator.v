module math

fn init() {
	println('Hello I am called when you import me.')
}

pub fn add(value1 int, value2 int) int {
	return value1 + value2
}

fn subtract(value1 int, value2 int) int {
	return value1 - value2
}

fn multiply(value1 int, value2 int) int {
	return value1 * value2
}

fn divide(value1 int, value2 int) int {
	return value1 / value2
}
