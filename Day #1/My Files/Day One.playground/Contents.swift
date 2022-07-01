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
