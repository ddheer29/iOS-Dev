// Closure = Ek function jise tum variable me store kar sakte ho, kisi dusre function ko pass kar sakte ho ya return kar sakte ho.

let greet = {
    print("Hello from a closure!")
}

greet() // Output: Hello from a closure!

func makeCounter() -> () -> Int {
    var count = 0
    let counter =  {
        count += 1
        return count
    }
    return counter
}

let counter = makeCounter()
print(counter())
print(counter())
print(counter())
print(counter())
print(counter())
print(counter())
