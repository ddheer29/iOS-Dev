func greet() {
    print("Hey Good morning!")
}

greet()

// Type declaration in parameters

func add(a: Int, b: Int) -> Int {
    return a + b
}

print("Result: \(add(a: 5, b: 10))")

// internal and external parameter names
func greetPerson(name naam: String) {
    print("Hello, \(naam)!")
}

greetPerson(name: "Alice")

// omit external parameter name
func greetPerson(_ name: String) {
    print("Hello, \(name)!")
}

greetPerson("Bob")

// default parameter values
func introduce(name: String, age: Int = 18) {
    print("My name is \(name) and I am \(age) years old.")
}

introduce(name: "Charlie")
introduce(name: "David", age: 25)

// Function that returns tuple
func getMinMac(numbers: [Int]) -> (min: Int, max: Int) {
    return (numbers.min()!, numbers.max()!)
}

let numbers = [3, 7, 1, 9, 4]
let result = getMinMac(numbers: numbers)
print("Min: \(result.min), Max: \(result.max)")

func averageCalculatr(_ numbers: Double...) -> Double {
    let total = numbers.reduce(0, +)
    return total / Double(numbers.count)
}

let avg = averageCalculatr(10.0, 20.0, 30.0, 40.0)
print("Average: \(avg)")

// Pass by reference using inout parameters, normally parameters are passed by value, but using inout we can pass by reference
func swapValues(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var x = 5
var y = 10
print("Before swap: x = \(x), y = \(y)")
swapValues(&x, &y)
print("After swap: x = \(x), y = \(y)")

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

var operation: (Int, Int) -> Int = multiply
let product = operation(4, 5)
print("Product: \(product)")
