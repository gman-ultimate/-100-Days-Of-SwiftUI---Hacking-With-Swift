import Cocoa

func clear(times: Int = 3) {
    for _ in 0..<times {
        print()
    }
}

// MARK: - (D8L1)

// Sample Function
func printTimesTables(for number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
clear()


// With Default Values For Parameters
func printTimesTables2(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables2(for: 5, end: 20)
clear(times: 1)
printTimesTables2(for: 8)
clear()


// Example Default Action
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll()
print(characters.count)
/// As a performance optimization, Swift gives arrays just enough memory to hold their items plus a little extra so they can grow a little over time. If more items are added to the array, Swift allocates more and more memory automatically, so that as little as possible is wasted.

// Keeping Capacity
characters = ["Lana", "Pam", "Ray", "Sterling"]
characters.removeAll(keepingCapacity: true)
/// Default value of false

clear(times: 5)


// MARK: - (D8L2)

// Password Fatal Error Example
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "123453333333"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}
