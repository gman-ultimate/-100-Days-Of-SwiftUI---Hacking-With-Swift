import Cocoa

// MARK: - (D4L1) Type Annotations

// Swift can infer what type of data a constant/variable is based on the provided value
let surname = "Lasso" // Swift knows this is a String
var score = 0 // Swift knows this is an Integar

// But, if you want to assign the data type to a variable / constant, use type annotations
let surname2: String = "Lasso"
var score2: Int = 0
var score3: Double = 0

// ---

// TYPES OF DATA:

// String (Text)
let playerName: String = "Roy"

// Integar (Number w/o decimal)
let luckyNumber: Int = 13

// Double (Decimal number)
let pi: Double = 3.1415

// Boolean (true/false)
let isAuthenticated: Bool = true

// Arrays (A group of data elements)
let albums: [String] = ["Red", "Fearless"]
let oddNumbers: [Int] = [1,3,5,7,9]

// Dictionaries
let user: [String: String] = ["id": "@twostraws"]
let users: [Int: String] = [1: "Gary", 2: "Phat Gus"]

// Sets (Arrays, but stored in a way optimized for checking)
let books: Set<String> = Set([
    "Diary of a Wimpy Kid",
    "Greenglass House"
])

// ---

// Empty Array (helps to define what the array is for (String), before data is entered)
var soda: [String] = [String]()
var cities: [String] = []
var clues = [String]()
/// All three are the same

soda.append("Coke")
soda.append("Sprite")

// type annotations in enums

enum UIStyle {
    case light, dark, system
}
//         .......  <-- No Need
var style: UIStyle = UIStyle.light
style = .dark

// When to use type annotations?
/// It's better to use infers, correct your code, etc. before adding type annotations. Only use type annotations if you have an empty value. (even then, type annotations are unnessisary)


