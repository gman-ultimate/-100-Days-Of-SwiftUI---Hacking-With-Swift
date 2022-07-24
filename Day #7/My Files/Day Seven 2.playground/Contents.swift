import Cocoa

// MARK: - (D7L1) TRY 2


// Example 1

print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")

func clear(times: Int) {
    for _ in 0..<times {
        print()
    }
}
clear(times: 10)

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

clear(times: 10)


// Example 2

let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

let roll = Int.random(in: 1...6)
print(roll)

clear(times: 10)


// Parsing In Data (1)

//                  | - Parameter
func printTimesTabls(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTabls(number: 4, end: 12)

clear(times: 10)


// MARK: - (D7L2) TRY 2

func rollDice(sides: Int) -> Int {
    return Int.random(in: 1...sides)
}

let result = rollDice(sides: 400)
print(result)
print(rollDice(sides: 400))


// Challenge: Do two strings contain the same letters, regardless of their order?

func areSameLetters(string1: String, string2: String, returnFullPrint: Bool, returnDebugger: Bool) -> Bool {
    
    if returnFullPrint == true && string1.sorted() == string2.sorted() {
        print("In case you are wondering:  * \(string1) *  and  * \(string2) *  are the same when sorted alphabeticly!")
    } else if returnFullPrint == true {
        print("In case you are wondering:  * \(string1) *  and  * \(string2) *  are NOT the same when sorted alphabeticly!")
    }
    
    if returnDebugger == true && string1.sorted() == string2.sorted() {
        print("true")
    } else if returnDebugger == true {
        print("false")
    }
    
    return string1.sorted() == string2.sorted()
    
}

areSameLetters(string1: "cab", string2: "gg", returnFullPrint: true, returnDebugger: true)

clear(times: 2)

areSameLetters(string1: "mcdonalds", string2: "acddlmnos", returnFullPrint: true, returnDebugger: true)

clear(times: 10)


// MARK: - (D7L3) TRY 2

// Returning a single value from function - Example:

func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}


// Returning Multiple Values, workaround 1

func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")


// Returning Multiple Values, workaround 2

func getUser2() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let user2 = getUser2()
print("Name: \(user2["firstName", default: "Anonymous"]) \(user2["lastName", default: "Anonymous"])")


// There Is A Better Way: Tuples

func getUser3() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user3 = getUser3()
print("Name: \(user3.firstName) \(user3.lastName)")


// 🚀 ME:
func getTenHundred(number: Int) -> (ten: Int, hundred: Int) {
    let tenCalc = number * 10
    let hundredCalc = number * 100
    return (ten: tenCalc, hundred: hundredCalc)
}

let tenHundred = getTenHundred(number: 3)
print("\(tenHundred.hundred)")

clear(times: 8)


// MARK: - (D7L4) TRY 2

func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()

    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }

    // Send back all the rolls
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)
