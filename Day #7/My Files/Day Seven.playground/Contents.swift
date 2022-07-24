import Cocoa


// MARK: - (D7L1) TRY 1

// Sample Simple App

print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")

print()
/// If this needs to be replaced, then use a:

// Function

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

// Run Function
showWelcome()
/// ( ) --> Symbolizes a function, holds configuration options for function

// Inputing Data To Function

//                           | --> Parameter (Int)
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

// Two sets of data
func printTimesTables(number: Double, whenEnd: Int) {
    for i in 1...12 {
        print("\(i) * \(number) is \(Double(i) * number)")
    }
}

printTimesTables(number: 5, whenEnd: 200)
for _ in 1...4 {
    print()
}

// MARK: - (D7L2) TRY 2
// Importing "Cocoa" includes many functions such as:

let root = sqrt(169)
print(root)

// Returning Value From Function

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

rollDice()
print(rollDice())

print()

// Contains All Same Letters?

//let string1 = "cab"
//let string2 = "abc"

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

print(areLettersIdentical2(string1: "abc", string2: "cab"))

// Even easier:
func areLettersIdentical2(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
} /// return - isn't really necessary as there is only one line

print(areLettersIdentical2(string1: "abc", string2: "cab"))

func read(books: [String]) -> Bool {
    for book in books {
        print("I'm reading \(book)")
    }
    return true
}
