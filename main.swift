import Foundation

// var n constants

var num = 10
print("The value of num is \(num)")
num = 20
print("The value of num is \(num)")

let constantNum = 30
print("The value of constantNum is \(constantNum)")
// constantNum = 40 // This will cause a compile-time error because constantNum is a constant and cannot be reassigned.

// type inference
var inferredNum = 50
var inferredString = "Hello, Swift!"

// type annotation
var annotatedNum: Int = 60
var annotatedString: String = "This is a string with type annotation."


// var number = 100
// number = "hello" // This will cause a compile-time error because 'number' is inferred to be of type Int and cannot be assigned a String value.

// Operators
// = -> assignment operator
// == -> equality operator
// != -> inequality operator
// > -> greater than operator
// < -> less than operator
// >= -> greater than or equal to operator
// <= -> less than or equal to operator
// && -> logical AND operator
// || -> logical OR operator
// ! -> logical NOT operator
// + -> addition operator
// - -> subtraction operator
// * -> multiplication operator
// / -> division operator   
// a > b ? print("a is greater than b") : print("a is not greater than b") // Ternary conditional operator
// range operator: a...b (closed range means it includes both endpoints), a..<b (half-open range means it includes the lower bound but not the upper bound)
for number in 1...5 {
    print("Number: \(number)")
}
for number in 1..<5 {
    print("Number: \(number)")
}

// Strings

let simpleString = "Hello, World!"
let multiLineString = """
This is a multi-line string.
It can span multiple lines.
"""
print(simpleString)
print(multiLineString)

// String interpolation
let name = "Alice"
let greeting = "Hello, \(name)!" // String interpolation allows you to include variables or expressions inside a string by wrapping them in parentheses and prefixing them with a backslash (\). In this case, the value of the variable 'name' is inserted into the greeting string.
print(greeting)
print("Hello", name, "!") // This is another way to concatenate strings and variables using commas in the print function. It will print "Hello Alice !".

// Types
let integerNum: Int = 42 // Int type represents a whole number in Swift. It can store both positive and negative integers. In this case, the integerNum variable is assigned the value 42.
let doubleNum: Double = 3.14 // Double type represents a double-precision floating-point number in Swift. It is used to store decimal values with higher precision compared to Float. In this case, the doubleNum variable is assigned the value 3.14.
let floatNum: Float = 2.71 // Float type represents a single-precision floating-point number in Swift. It is used to store decimal values with less precision compared to Double. In this case, the floatNum variable is assigned the value 2.71.
let booleanValue: Bool = true // Boolean type represents a true or false value. In this case, the booleanValue variable is assigned the value true.
let characterValue: Character = "A" // Character type represents a single character in Swift. It can be a letter, digit, symbol, or any other Unicode character. In this case, the characterValue variable is assigned the character "A".
let stringValue: String = "This is a string." // String type represents a sequence of characters in Swift. It can contain letters, digits, symbols, and whitespace. In this case, the stringValue variable is assigned the string "This is a string.".

// Collections - Arrays, Dictionaries, Sets

// Arrays
var fruits: [String] = ["Apple", "Banana", "Cherry"] // An array is an ordered collection of values of the same type. In this case, the fruits array is declared to hold String values and is initialized with three fruit names.
fruits.append("Date") // The append() method is used to add a new element to the end of the array. In this case, the fruit "Date" is added to the fruits array.
print(fruits) // This will print the contents of the fruits array, which now includes "Apple", "Banana", "Cherry", and "Date".

var numbers: [Int] = [1, 2, 3, 4, 5] // An array of integers is declared and initialized with five values.
numbers.remove(at: 2) // The remove(at:) method is used to remove an element from the array at a specific index. In this case, the element at index 2 (which is the number 3) is removed from the numbers array.
print(numbers) // This will print the contents of the numbers array, which now includes 1, 2, 4, and 5 after the removal of the number 3.
numbers.insert(10, at: 1) // The insert(_:at:) method is used to insert a new element at a specific index in the array. In this case, the number 10 is inserted at index 1 in the numbers array.
print(numbers) // This will print the contents of the numbers array, which now includes 1, 10, 2, 4, and 5 after the insertion of the number 10 at index 1.
numbers.sort() // The sort() method is used to sort the elements of the array in ascending order. In this case, the numbers array is sorted, resulting in the order 1, 2, 4, 5, 10.
print(numbers) // This will print the contents of the numbers array after sorting, which will be [1, 2, 4, 5, 10].
numbers.reverse() // The reverse() method is used to reverse the order of the elements in the array. In this case, the numbers array is reversed, resulting in the order 10, 5, 4, 2, 1.
print(numbers) // This will print the contents of the numbers array after reversing, which will be [10, 5, 4, 2, 1].
numbers.removeAll() // The removeAll() method is used to remove all elements from the array, effectively clearing it. In this case, the numbers array is emptied, and it will no longer contain any values.
print(numbers) // This will print the contents of the numbers array after removing all elements, which will be an empty array [].
numbers = [1, 2, 3, 4, 5] // The numbers array is re-initialized with five values after being cleared.
numbers.removeAll(where: { $0 % 2 == 0 }) // The removeAll(where:) method is used to remove elements from the array that satisfy a specific condition. In this case, all even numbers (numbers divisible by 2) are removed from the numbers array. The closure { $0 % 2 == 0 } checks if each element ($0) is even.
print(numbers) // This will print the contents of the numbers array after removing all even numbers, which will be [1, 3, 5].
print(numbers[2]) // This will print the element at index 2 of the numbers array, which is 5 after the removal of even numbers.

// loop through an array
for fruit in fruits {
    print(fruit) // This will print each fruit in the fruits array on a new line
}

// Dictionaries - dictionaries are unordered collections of key-value pairs. Each value is associated with a unique key, which is used to access the corresponding value.
var capitals: [String: String] = 
[
    "USA": "Washington, D.C.", 
    "France": "Paris", 
    "Japan": "Tokyo"
] // A dictionary is declared to hold String keys and String values. In this case, the capitals dictionary is initialized with three key-value pairs representing countries and their respective capital cities.
capitals["Germany"] = "Berlin" // A new key-value pair is added to the capitals dictionary. The key "Germany" is associated with the value "Berlin".
print(capitals) // This will print the contents of the capitals dictionary, which now includes the key-value pair for Germany.
capitals.removeValue(forKey: "France") // The removeValue(forKey:) method is used to remove a key-value pair from the dictionary based on the specified key. In this case, the key-value pair for "France" is removed from the capitals dictionary.
print(capitals) // This will print the contents of the capitals dictionary after removing the key-value pair for "France".
capitals["USA"] = "Washington" // The value associated with the key "USA" is updated to "Washington". This demonstrates how to reassign a value for an existing key in the dictionary.
print(capitals) // This will print the contents of the capitals dictionary after updating the value for the key "USA". The dictionary now contains the updated value for "USA" and the remaining key-value pairs for "Japan" and "Germany".

// loop through a dictionary
for (country, capital) in capitals {
    print("The capital of \(country) is \(capital).") // This will print each country and its corresponding capital city from the capitals dictionary on a new line.
}

// Sets - sets are unordered collections of unique values. They do not allow duplicate elements and provide efficient membership testing and set operations.
var uniqueNumbers: Set<Int> = [1, 2, 3, 4, 5] // A set is declared to hold unique Int values. In this case, the uniqueNumbers set is initialized with five values.
uniqueNumbers.insert(6) // The insert() method is used to add a new element to the set. In this case, the number 6 is added to the uniqueNumbers set.
print(uniqueNumbers) // This will print the contents of the uniqueNumbers set, which now includes the numbers 1, 2, 3, 4, 5, and 6. The order of elements in a set is not guaranteed, as sets are unordered collections.
uniqueNumbers.remove(3) // The remove() method is used to remove an element from the set. In this case, the number 3 is removed from the uniqueNumbers set.
print(uniqueNumbers) // This will print the contents of the uniqueNumbers set after removing the number 3. The set will now contain the numbers 1, 2, 4, 5, and 6.
if uniqueNumbers.contains(4) {
    print("The set contains the number 4.") // This will print a message indicating that the number 4 is present in the uniqueNumbers set.
} else {
    print("The set does not contain the number 4.") // This will print a message indicating that the number 4 is not present in the uniqueNumbers set.
}

// loop through a set
for number in uniqueNumbers {
    print(number) // This will print each number in the uniqueNumbers set on a new line
}
