import Cocoa

// MARK: - (D3L1) Data in Arrays

// Array Examples
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]
/// "That creates three different arrays: one holding strings of people’s names, one holding integers of important numbers, and one holding decimals of temperatures in Celsius."

// Chose a value from an array
print(beatles[0]) // John
print(numbers[1]) // 8
print(temperatures[2]) // 26.4
/// (It starts from zero)

// Modify Array After Creation:
beatles.append("Adrian")
print(beatles[4]) // Adrian

// You can added as many as you would like; duplicates are allowed
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")
print(beatles) // ["John", "Paul", "George", "Ringo", "Adrian", "Allen", "Adrian", "Novall", "Vivian"]

// Arrays can only contain one data type:
// ERROR temperatures.append("Chris")
/// Will not work

// Data types cannot be mixed:
// ERROR let notAllowed = beatles[0] + numbers[2]
//       print(notAllowed)

// Data can be extracted to a constant / variable:
let firstBeatle = beatles[0]; print(firstBeatle) // John
let firstNumber = numbers[0]; print(firstNumber) // 4

// It is also possible to start an empty array
var scores = Array<Int>() // Integer
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1]) // 80

var albums = Array<String>() // String
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums[1]) // Fearless

var albumsTwo = [String]() // ALSO: String
albumsTwo.append("Folklore")
albumsTwo.append("Fearless")
albumsTwo.append("Red")
print(albumsTwo[1]) // Fearless

var albumsThree = ["Folklore"] // ALSO: String
albumsThree.append("Fearless")
albumsThree.append("Red")
print(albumsThree[1]) // Fearless

// Some Useful Functions & Tools
print(albums.count) // How many sets in an array

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
print(characters)

characters.remove(at: 2) // Removes specified data set
print(characters.count)
print(characters)

characters.removeAll() // Removes all sets from the array
print(characters.count)
print(characters)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen")) // Tells whether a set holds a value; false

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted()) // Returns a new array with its items sorted in ascending order - original array is unchaged

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed() // Reverses the order of sets in array
print(reversedPresidents)

// MARK: - (D3L2) store and find data in dictionaries

// EXAMPLE: Array containing employees details
var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])") // Name: Taylor Swift
print("Job title: \(employee[1])") // Job title: Singer
print("Location: \(employee[2])") // Location: Nashville

/// "But that has a couple of problems. First, you can’t really be sure that employee[2] is their location – maybe that’s their password. Second, there’s no guarantee that item 2 is even there, particularly because we made the array a variable. This kind of code would cause serious problems:"

print("Name: \(employee[0])")
employee.remove(at: 1)
print("Job title: \(employee[1])") // WRONG: Nashville
// ERROR: print("Location: \(employee[2])")

// Dictonaries solve this:
let employee2 = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]
let employee21 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
/// Both of those are the same

print(employee2["name"]) // YELLOW ERROR: Expression implicitly coerced from 'String?' to 'Any'
print(employee2["job"]) // YELLOW ERROR: Expression implicitly coerced from 'String?' to 'Any'
print(employee2["location"]) // YELLOW ERROR: Expression implicitly coerced from 'String?' to 'Any'

// To fix:
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

// Dictonaries come in many forms
let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default: "Unknown"])

/// "You can also create an empty dictionary using whatever explicit types you want to store, then set keys one by one:"
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
print(archEnemies["Batman", default: "None"])
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin" // Value can be rewritten
print(archEnemies["Batman", default: "None"])

// MARK: - (D3L3) Sets
// Sets are similar to arrays, except you can’t add duplicate items, and they don’t store their items in a particular order.

// Example Set:
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
/// Array is inside of a set
print(people) // Prints in random order

var people2 = Set<String>()
people2.insert("Denzel Washington") // Insert, instead of append: Orders don't matter in sets
people2.insert("Tom Cruise")
people2.insert("Nicolas Cage")
people2.insert("Samuel L Jackson")

/// "Second, instead of storing your items in the exact order you specify, sets instead store them in a highly optimized order that makes it very fast to locate items. And the difference isn’t small: if you have an array of 1000 movie names and use something like contains() to check whether it contains “The Dark Knight” Swift needs to go through every item until it finds one that matches – that might mean checking all 1000 movie names before returning false, because The Dark Knight wasn’t in the array.
/// In comparison, calling contains() on a set runs so fast you’d struggle to measure it meaningfully."

// MARK: - Enums (enumeration)

// Example Problem:
var selected = "Monday"
selected = "Tuesday"
selected = "January"
selected = "Friday "
/// This type of coding is confusing and hard to debug & correct

// Enum Example:
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

// OR:

enum Weekday2 {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.friday
// ERROR: Knows that this is wrong:   day = Weekday.january

day = .thursday // Swift know we are referencing "Weekday"

/// Swift stores enums in a way that is more optimized than strings
