import Cocoa

// MARK: Booleans (D2L1)

// Booleans state true/false
let goodDogs = true
let gameOver = false
let isMultiple = 120.isMultiple (of: 3)

// Useful operator:
var yummyFood = !false // True
yummyFood = !yummyFood // False
yummyFood = !yummyFood // True
/// Exclaimation mark makes false = true and true = false

// Toggle
var feelingHappy = false // False
feelingHappy.toggle() // True

// MARK: Joining Strings (D2L1)

// Adding Together via "="
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart // Hello, world!

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action // Haters gonna hate
/// This is great for small things, but shouldn't be used too much.

// "Each time Swift sees two strings being joined together using + it has to make a new string out of them before continuing, and if you have lots of things being joined it’s quite wasteful."
let luggageCode = "1" + "2" + "3" + "4" + "5"
/// Time consuming, it can't do 1 + 2 + 3 + 4 + 5. It has to do: 12, 123, 1234, 12345


// Swift has a better solution called string interpolation:
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let name = "Taylor"
let age = 26
let message = " Hello, my name is \(name) and I'm \(age) years old." // Hello, my name is Taylor and I'm 26 years old.

// string interpolation is better because this isn't possible:
let number = 11
// let missionMessage = "Apollo " + number + " landed on the moon."

// Although you could say:
var missionMessage = "Apollo " + String(number) + " landed on the moon."
// It is still better to say:
missionMessage = "Apollo \(number) landed on the moon"


// You can also do this:
print("5 x 5 is \(5 * 5)") // 5 x 5 is 25


// MARK: - Checkpoint 1 (D2L3)
let celsius = 11
let fahrenheit = (celsius * 9 / 5 + 32)
print("\(celsius) degrees converted to fahrenheit is \(fahrenheit)!")
