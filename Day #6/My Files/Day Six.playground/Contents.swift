import Cocoa

// MARK: - (D6L1)

// Simple For Loop

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

// for : means "loop"
// os : random name; doesn't matter
// in : prefix to the number of times looped
// platforms : the amount of time to loop; in this case platform.count AND data set name
for os in platforms {
    print("Swift works great on \(os).")
}

// We call the code inside the braces the loop body
// We call one cycle through the loop body a loop iteration.
// We call os the loop variable. This exists only inside the loop body, and will change to a new value in the next loop iteration.

// "os" means nothing:
for rubberChicken in platforms {
    print("Swift works great on \(rubberChicken).")
}

// Range Loops

// We can define times looped & loop over a fixed range of numbers
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

// i is random, but is common converntion for "number you're counting with"
// j = counting a second number
// k = counting a third number
// and so on...

// Nested Loops

for i in 1...12 {
    print("The \(i) times table: ")
    
    for j in 1...12 {
        print("\(j) x \(i) is \(j * i)")
    }
    
    print()
    /// Using print() by itself, with no text or value being passed in, will just start a new line. This helps break up our output so it looks nicer on the screen.
}

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}
/// This counts UP TO 5, not through 5

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

// sometimes you want to run some code a certain number of times using a range, but you don’t actually want the loop variable – you don’t want the i or j, because you don’t use it.

// MARK: - (D6L2)

// Simple While loop

var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")

/// While loops are really useful when you just don’t know how many times the loop will go around.

// Integar & Double .random

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1000)

// Use w/ While Loop

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 500 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...500)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")

/// You’ll find yourself using both for and while loops in your own code: for loops are more common when you have a finite amount of data to go through, such as a range or an array, but while loops are really helpful when you need a custom condition.

// MARK: - (D6L2)

// Continue

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}
/// Stops after all jpgs found

// Break

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
/// Stops after 10
