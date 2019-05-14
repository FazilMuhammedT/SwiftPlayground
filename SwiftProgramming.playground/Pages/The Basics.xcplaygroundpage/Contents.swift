//: # [Swift Programming Basics](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
//: Swift is a new programming language for iOS, macOS, watchOS, and tvOS app development.
//:
//: ## Constants and Variables
//: **Constants** and **variables** associate a name. The value of a constant can’t be changed once it’s set, whereas a variable can be set to a different value in the future.
//:
//: ### Declaring Constants and Variables
//: Constants and variables must be declared before they’re used. You declare constants with the *let* keyword and variables with the *var* keyword.
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
//:This code can be read as: “Declare a new constant called maximumNumberOfLoginAttempts, and give it a value of 10. Then, declare a new variable called currentLoginAttempt, and give it an initial value of 0.”
//:
//: ### Type Annotations
//: Provide a type annotation when you declare a constant or variable, to be clear about the kind of values the constant or variable can store.
var welcomeMessage: String
//: This code can be read as: “Declare a variable called welcomeMessage that is of type String.”
welcomeMessage = "Hello"
//:
//: ### Naming Constants and Variables
//: Constant and variable names can contain almost any character, including Unicode characters:
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!" // friendlyWelcome is now "Bonjour!

let languageName = "Swift"
//languageName = "Swift++" // This is a compile-time error: languageName cannot be changed.

//: ### Printing Constants and Variables
//: Print the current value of a constant or variable with the print(_:separator:terminator:) function
print(friendlyWelcome) //Prints "Bonjour!"
//: Swift uses **string interpolation** to include the name of a constant or variable as a placeholder in a longer string, and to prompt Swift to replace it with the current value of that constant or variable. Wrap the name in parentheses and escape it with a backslash before the opening parenthesis:
print("The current value of friendlyWelcome is \(friendlyWelcome)") // Prints "The current value of friendlyWelcome is Bonjour!"
//:
//: ## Comments
//: Comments to include nonexecutable text in your code, as a note or reminder to yourself. Comments are ignored by the Swift compiler when your code is compiled.
// This is a comment.

/* This is also a comment
 but is written over multiple lines. */

/* This is the start of the first multiline comment.
 /* This is the second, nested multiline comment. */
 This is the end of the first multiline comment. */
//:
//: ## Semicolons
//: Swift doesn’t require you to write a semicolon (;) after each statement in your code, although you can do so if you wish
let cat = "🐱"; print(cat)// Prints "🐱"
//:
//: ## Integers
//: Integers are whole numbers with no fractional component, such as 42 and -23. Integers are either signed (positive, zero, or negative) or unsigned (positive or zero).
//:
//: ### Integer Bounds
let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8
//:
//: ### Int
//: * On a 32-bit platform, Int is the same size as Int32.
//: * On a 64-bit platform, Int is the same size as Int64.
//:
//: On 32-bit platforms, Int can store any value between -2,147,483,648 and 2,147,483,647, and is large enough for many integer ranges.

