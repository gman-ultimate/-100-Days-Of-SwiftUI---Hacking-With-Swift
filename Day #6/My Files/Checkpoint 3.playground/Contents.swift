import Cocoa

// ORIGINAL
var fizz = false
var buzz = false
for i in 1...100 {
    fizz = false
    buzz = false
    
    if i.isMultiple(of: 3) {
        fizz = true
    }
    if i.isMultiple(of: 5) {
        print(fizz)
        buzz = true
    }
    
    if !fizz && !buzz {
        print(i)
    }
    if fizz && !buzz {
        print("\(i) - Fizz")
    }
    if buzz && !fizz {
        print("\(i) - Buzz")
    }
    if fizz && buzz {
        print("\(i) - FizzBuzz")
    }
}

// WITH HELP FROM TWITTER
for number in 1...100 {
    if number.isMultiple(of: 3) && number.isMultiple(of: 5) {
        print("Wow! \(number) is Fizzy and Buzzy! Yay! 🎉")
    } else if number.isMultiple(of: 3) {
        print("\(number) is Fizzy 🥤")
    } else if number.isMultiple(of: 5) {
        print("\(number) is Buzzy 🐝")
    } else {
        print("\(number) is not Fizzy or Buzzy! 😔")
    }
}

for number in 1...100000 {
    if number.isMultiple(of: 3) && number.isMultiple(of: 5) {
        print("Wow \(number) is Fizzy and Buzzy! Yay!")
    } else if number.isMultiple(of: 3) {
        print("\(number) is Fizzy")
    } else {
        print("\(number)")
    }
}
