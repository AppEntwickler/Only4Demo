//
//  main.swift
//  _02-The-Basics
//
//  Created by 🅰️ppEntwickler on 17.08.24.
//
//  Code lesen und verstehen
//
//  https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics#Comments
//

import Foundation

print("_02-The-Basics")

// Declaring Constants and Variables
/*
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
*/

var environment = "development"
let maximumNumberOfLoginAttempts: Int
// maximumNumberOfLoginAttempts has no value yet.


if environment == "development" {
    maximumNumberOfLoginAttempts = 100
} else {
    maximumNumberOfLoginAttempts = 10
}
// Now maximumNumberOfLoginAttempts has a value, and can be read.

var x = 0.0, y = 0.0, z = 0.0

// Type Annotations
var welcomeMessage: String

welcomeMessage = "Hello"

var red, green, blue: Double

// Naming Constants and Variables
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
// friendlyWelcome is now "Bonjour!"

let languageName = "Swift"
// languageName = "Swift++"
// This is a compile-time error: languageName cannot be changed.

// Printing Constants and Variables
print(friendlyWelcome)
// Prints "Bonjour!"


print("The current value of friendlyWelcome is \(friendlyWelcome)")
// Prints "The current value of friendlyWelcome is Bonjour!"


// Comments

// This is a comment.

/* This is also a comment
but is written over multiple lines. */

/* This is the start of the first multiline comment.
    /* This is the second, nested multiline comment. */
This is the end of the first multiline comment. */


// Semicolons
let cat = "🐱"; print(cat)
// Prints "🐱"

// Integers
// Integer Bounds
let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8

// Int
/*
 In most cases, you don’t need to pick a specific size of integer to use in your code. Swift provides an additional integer type, Int, which has the same size as the current platform’s native word size:
 On a 32-bit platform, Int is the same size as Int32.
 On a 64-bit platform, Int is the same size as Int64.
 Unless you need to work with a specific size of integer, always use Int for integer values in your code. This aids code consistency and interoperability. Even on 32-bit platforms, Int can store any value between -2,147,483,648 and 2,147,483,647, and is large enough for many integer ranges.
 */

// UInt
/*
 Swift also provides an unsigned integer type, UInt, which has the same size as the current platform’s native word size:
 On a 32-bit platform, UInt is the same size as UInt32.
 On a 64-bit platform, UInt is the same size as UInt64.
 */

// Floating-Point Numbers
/*
 Floating-point numbers are numbers with a fractional component, such as 3.14159, 0.1, and -273.15.
 Floating-point types can represent a much wider range of values than integer types, and can store numbers that are much larger or smaller than can be stored in an Int. Swift provides two signed floating-point number types:
 Double represents a 64-bit floating-point number.
 Float represents a 32-bit floating-point number.
 */

// Type Safety and Type Inference
let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int

//let pi = 3.14159
// pi is inferred to be of type Double

let anotherPi = 3 + 0.14159
// anotherPi is also inferred to be of type Double

// Numeric Literals
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Numeric Type Conversion

// Integer Conversion
//let cannotBeNegative: UInt8 = -1
// UInt8 can't store negative numbers, and so this will report an error
//let tooBig: Int8 = Int8.max + 1
// Int8 can't store a number larger than its maximum value,
// and so this will also report an error

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

// Integer and Floating-Point Conversion

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double

let integerPi = Int(pi)
// integerPi equals 3, and is inferred to be of type Int

// Type Aliases
typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound is now 0

// Booleans
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
// Prints "Eww, turnips are horrible."

/*let i = 1
if i {
    // this example will not compile, and will report an error
}*/

let i = 1
if i == 1 {
    // this example will compile successfully
}

// Tuples
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// Prints "The status code is 404"

print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")
// Prints "The status code is 200"
print("The status message is \(http200Status.description)")
// Prints "The status message is OK"
// Prints "The status message is Not Found"

// Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// The type of convertedNumber is "optional Int"

// nil
var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value

var surveyAnswer: String?
// surveyAnswer is automatically set to nil

/*let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)*/


if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// Prints "convertedNumber contains some integer value."

// Optional Binding
/*if let <#constantName#> = <#someOptional#> {
   <#statements#>
}*/

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}
// Prints "The string "123" has an integer value of 123"

let myNumber = Int(possibleNumber)
// Here, myNumber is an optional integer
if let myNumber = myNumber {
    // Here, myNumber is a non-optional integer
    print("My number is \(myNumber)")
}
// Prints "My number is 123"

if let myNumber {
    print("My number is \(myNumber)")
}
// Prints "My number is 123"

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"


if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// Prints "4 < 42 < 100"

let name: String? = nil
let greeting = "Hello, " + (name ?? "friend") + "!"
print(greeting)
// Prints "Hello, friend!"

// Force Unwrapping
/*let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)*/


let number = convertedNumber!


guard let number = convertedNumber else {
    fatalError("The number was invalid")
}

// Implicitly Unwrapped Optionals
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // Requires explicit unwrapping


let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // Unwrapped automatically

let optionalString = assumedString
// The type of optionalString is "String?" and assumedString isn't force-unwrapped.

if assumedString != nil {
    print(assumedString!)
}
// Prints "An implicitly unwrapped optional string."

if let definiteString = assumedString {
    print(definiteString)
}
// Prints "An implicitly unwrapped optional string."

// Error Handling
/*func makeASandwich() throws {
    // ...
}


do {
    try makeASandwich()
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(ingredients)
}*/


// Assertions and Preconditions
// Debugging with Assertions
//let age = -3
//assert(age >= 0, "A person's age can't be less than zero.")
// This assertion fails because -3 isn't >= 0.

// M1K3 age
let age = 8

assert(age >= 0)

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

// Enforcing Preconditions

// In the implementation of a subscript...
//precondition(index > 0, "Index must be greater than zero.")


