import Cocoa

// MARK: - (D8L4) - Checkpoint 4
/// https://www.reddit.com/r/SwiftUI/comments/s6tu5c/100_dhws_ui_checkpoint_4_question/

enum NumberError: Error {
    case outOfBounds, noroot
}

func sqInt(number: Int, upTo: Int = 10000) throws {
    let upToDiv = upTo / 100
    
    var result = 1
    
    if number < 1 || number > upTo {
        throw NumberError.outOfBounds
    }
    
    for root in 1...upToDiv {
        result = root * root
        if result == number {
            print("The squareroot of \(number) is \(root)")
            break
        }
    }
    
    if result != number {
        throw NumberError.noroot
    }
}

do {
    try sqInt(number: 20)
} catch NumberError.outOfBounds {
    print("Use a valid number.")
} catch NumberError.noroot {
    print("This program only shows integar roots.")
}
