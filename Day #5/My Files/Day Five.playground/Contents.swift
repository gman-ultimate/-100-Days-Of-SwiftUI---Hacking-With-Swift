import Cocoa

// MARK: - (D5L1)
// Check if a condition is true or false

// EXAMPLE: Boolean Value

var someCondition = true
if someCondition {
    print("Some Condition Is True")
}

someCondition.toggle()

if someCondition {
    print("Some Condition Is True")
    print("🟩")
} else {
    print("Some Condition Is False")
    print("🟥")
}

// EXAMPLE: Integar / Double

var score = 85

if score > 80 {
    print("Great job!")
}

score = 79

if score > 80 {
    print("Great job!")
} else {
    print("Sorry...")
}

// >= : Equal OR Greater

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
} else {
    print("Great Job, You Passed!")
}

if age >= 18 {
    print("You're eligible to vote")
}

// String Alphabetical Sorting
let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

// Use Boolean & Double Operators

// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

// Display the result
print(numbers)

// If String = |String|

let country = "Canada"

if country == "Australia" {
    print("G'day!")
} else if country == "Canada" {
    print("GIVE ME MAPLE SYRUP!!")
} else {
    "I don't know that country"
}

// OR If Not:

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)")
}

// OR, we could translate "" to "Anonymous"

// Create the username variable
var username = "taylorswift13"
username = ""

// If `username` contains an empty string
if username == "" {
    // Make it equal to "Anonymous"
    username = "Anonymous"
}

// ANOTHER WAY WOULD BE:

if username.count == 0 {
    username = "Anonymous"
}
/// Prefer this as comparing a String to String isn't as fast as counting the characters

// ANOTHER WAY WOULD BE:
if username.isEmpty == true {
    username = "Anonymous"
}
/// This is EVEN BETTER as Swift doesn't need to go through the characters one by one.

// ANOTHER WAY WOULD BE:
if username.isEmpty {
    username = "Anonymous"
}
/// Although what we had before was a Boolean, this simples the code even more.

// Now print a welcome message
print("Welcome, \(username)!")

// Comparing Data

let firstName = "Paul"
let secondName = "Sophie"
let firstAge = 40
let secondAge = 10

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)

// With Enums:
enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)
/// That will print “true”, because small comes before large in the enum case list.

// MARK: - (D5L2)

// Dealing With Two Conditions
// (over 20, under 30)

let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
} // This it too long and complex:

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}
/// Called a "Logical operator" because it combines Booleans to make a new boolean

// && has a counterpart that is two pipe symbols, ||, which means “or”.

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}

// Enum Use

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}


print("-------------")
// MARK: - (D5L3)

// If & Else If is complex in long scenarios & repeats / mistakes can be made easily

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.snow

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}
/// These issues can be solved by:

// Switch Statements - All must be checked once
switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}
/// There is no need for enums before this. switch functions as so. ALSO: Switches only check up to what is needed. Instead of running the full code like if/if else.

// Another Example
let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}
/// That default: at the end is the default case, which will be run if all cases have failed to match. However, is default is place higher up, it will be run before other cases. Therefore, all entries will print "Who Are You?"

// Fallthough - without it
let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}

// with it
let dayOfChristmas = 5
print("My true love gave to me…")

switch dayOfChristmas {
case 6:
    print("this won't be shown")
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
print("-------------")

// MARK: - (D5L4) ternary conditional operator for quick tests
2 + 5 // Binary Operator | Binary has two pieces of input
// Ternary Operator | Ternary has three pieces of input

let voterAge = 18
let canVote = voterAge >= 18 ? "Yes" : "No"
print(canVote)
/// Identical to an if else statement, but condenced
/// Helpful Mnemonic: W            T         F
///               What?     True    False

// Can be used in print command
let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

// Use operators
let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

// Use == and enums
enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)
