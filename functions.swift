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