// Cocoa library - includes important functionality
import Cocoa

// MARK: Takeaways (D1L4)
// Perfer use of "let"

// var (variable) - value can change over time
var greeting = "Hello, playground"

// no need to repeat "var"
greeting = "Hi There"
greeting = "Hi Bob!"


// let (constant)
let mood = "Sad"

// can't do this:
// mood = "Happy"


// "print" lets you see what a variable/constant contains
var ageOfPerson = "Four"
print(ageOfPerson)

ageOfPerson = "ten"
print(ageOfPerson)

ageOfPerson = "dead"
print(ageOfPerson)

// cap sensitive, camal convention


// MARK: (D1L5)

// String is a set of text (can be as long as you want)
let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

// Be careful of multiline strings

/// Not Valid:
//let movie = "A day in
//the life of an
//Apple engineer"

/// Valid:
let moviePromo = """
A day in
the life of an
Apple engineer.

Coming Soon!
"""

// length of a string (multiline or otherwise)
print(moviePromo.count)
print(actor.count)

let moviePromoLength = moviePromo.count


// case control
print(moviePromo.uppercased())
let moviePromoBig = moviePromo.uppercased()
// () - if you’re asking Swift to read some data you *don’t* need the parentheses, but if you’re asking Swift to do some work you *do*. <- Over simplified


// hasPrefix / hasSuffix
print(moviePromo.hasPrefix("A day"))
print(moviePromo.hasPrefix("a day"))
let doesMoviePromoHavePrefixADay = moviePromo.hasPrefix("A Day")
/// ---
print(moviePromo.hasSuffix("Coming Soon!"))
let doesMoviePromoHaveSuffixComingSoon = moviePromo.hasSuffix(("Coming Soon!"))
print(moviePromo.hasSuffix("Coming Soon"))

// MARK: (D16l)

// Int (Integer) is made like a var or let
let score = 10

// Swift Ignores _ (in this case)
let reallyBig = 100_000_000
let reallyReallyBig = 1000__000__00_0___0

// Can add equations
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

// Edit variables with equations
var counter = 10
counter = counter + 5
print(counter)

// compound assignment operators
counter = 10
counter += 5
print(counter)

counter *= 2
print(counter)
counter -= 10
print(counter)
counter /= 2
print(counter)

// if true - integers
let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))

// MARK: (D1L7)
// "When you’re working with decimal numbers such as 3.1, 5.56, or 3.141592654, you’re working with what Swift calls floating-point numbers."

// Problem:
let decimal1 = 0.1 + 0.2
print(decimal1)

/// Binary operator '+' cannot be applied to operands of type 'Int' and 'Double'
let a = 1
let b = 2.0
//let c = a + b

// Two Options To Fix:
let C = a + Int(b)
let otherC = Double(a) + b

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

// Once a type has been assigned, it must stay that way
/// YES
var name = "Nicolas Cage"
name = "John Travolta"

/// NO
//var otherName = "Nicolas Cage"
//otherName = 57

var rating = 5.0
rating *= 2


// VERY HELPFUL: https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-both-doubles-and-integers
// AND: https://www.hackingwithswift.com/quick-start/understanding-swift/why-is-swift-a-type-safe-language
