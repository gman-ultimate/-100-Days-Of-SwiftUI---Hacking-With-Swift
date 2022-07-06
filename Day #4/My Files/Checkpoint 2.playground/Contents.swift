import Cocoa

let stringArray: [String] = ["First String", "Second String", "Third String", "Fourth String", "Fourth String", "Third String"]
let strings: Int = stringArray.count

let stringSet: Set<String> = Set(stringArray)
let uniqueStrings: Int = stringSet.count

print("There are \(strings) strings and \(uniqueStrings) unique strings in the set.")
