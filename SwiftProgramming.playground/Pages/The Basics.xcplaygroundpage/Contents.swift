//: # [Swift Programming Basics](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
//: Swift is a new programming language for iOS, macOS, watchOS, and tvOS app development.
//:
//: ## Constants and Variables
//: **Constants** and **variables** associate a name. The value of a constant can’t be changed once it’s set, whereas a variable can be set to a different value in the future.
//:
//: ### Declaring Constants and Variables
//: Constants and variables must be declared before they’re used. You declare constants with the `let` keyword and variables with the `var` keyword.
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
//:This code can be read as: “Declare a new constant called `maximumNumberOfLoginAttempts`, and give it a value of `10`. Then, declare a new variable called c`urrentLoginAttempt`, and give it an initial value of `0`.”
//:
//: ### Type Annotations
//: Provide a *type annotation* when you declare a constant or variable, to be clear about the kind of values the constant or variable can store.
var welcomeMessage: String
//: This code can be read as: “Declare a variable called `welcomeMessage` that is of type `String`.”
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
//: Print the current value of a constant or variable with the `print(_:separator:terminator:)` function
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
//: Swift doesn’t require you to write a semicolon (`;`) after each statement in your code, although you can do so if you wish
let cat = "🐱"; print(cat)// Prints "🐱"
//:
//: ## Integers
//: *Integers* are whole numbers with no fractional component, such as `42` and `-23`. Integers are either *signed* (positive, zero, or negative) or *unsigned* (positive or zero).
//:
//: ### Integer Bounds
let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8
//:
//: ### Int
//: * On a 32-bit platform, Int is the same size as `Int32`.
//: * On a 64-bit platform, Int is the same size as `Int64`.
//:
//: On 32-bit platforms, `Int` can store any value between `-2,147,483,648` and `2,147,483,647`, and is large enough for many integer ranges.
//:
//: ### UInt
//: Unsigned integer type, `UInt`, has the same size as the current platform’s native word size:
//: * On a 32-bit platform, `UInt` is the same size as `UInt32`.
//: * On a 64-bit platform, `UInt` is the same size as `UInt64`.
//:
//: ## Floating-Point Numbers
//: *Floating-point numbers* are numbers with a fractional component, such as `3.14159`, `0.1`, and `-273.15`.
//: * `Double` represents a 64-bit floating-point number.
//: * `Float` represents a 32-bit floating-point number.
//:
//: ## Type Safety and Type Inference
//: Swift is a *type-safe* language. A type safe language encourages you to be clear about the types of values your code can work with. If part of your code requires a `String`, you can’t pass it an `Int` by mistake.
//:
let meaningOfLife = 42 // meaningOfLife is inferred to be of type Int
let pi = 3.14159 // pi is inferred to be of type Double
let anotherPi = 3 + 0.14159 // anotherPi is also inferred to be of type Double
//:
//: ## Numeric Literals
//: Integer literals can be written as:
//: * A *decimal* number, with no prefix
//: * A *binary* number, with a `0b` prefix
//: * An *octal* number, with a `0o` prefix
//: * A *hexadecimal* number, with a `0x` prefix
//:
//: All of these integer literals have a decimal value of 17:
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation
//: For decimal numbers with an exponent of `exp`, the base number is multiplied by `10exp`:
//: * `1.25e2` means `1.25 x 10^2`, or `125.0`.
//: * `1.25e-2` means `1.25 x 10^-2`, or `0.0125`.
//:
//: For hexadecimal numbers with an exponent of `exp`, the base number is multiplied by `2exp`:
//: * `0xFp2` means `15 x 2^2`, or `60.0`.
//: * `0xFp-2` means `15 x 2^-2`, or `3.75`.
//:
//: All of these floating-point literals have a decimal value of `12.1875`:
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0
//: Numeric literals can contain extra formatting to make them easier to read. Both integers and floats can be padded with extra zeros and can contain underscores to help with readability. Neither type of formatting affects the underlying value of the literal:
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1
//:
//: ## Numeric Type Conversion
//: ### Integer Conversion
//:  A number that won’t fit into a constant or variable of a sized integer type is reported as an error when your code is compiled:
//let cannotBeNegative: UInt8 = -1 // UInt8 cannot store negative numbers, and so this will report an error
//let tooBig: Int8 = Int8.max + 1 // Int8 cannot store a number larger than its maximum value, and so this will also report an error
//:
//: To convert one specific number type to another, you initialize a new number of the desired type with the existing value.
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
//:
//: ### Integer and Floating-Point Conversion
//: Conversions between integer and floating-point numeric types must be made explicit:
let three = 3
let pointOneFourOneFiveNine = 0.14159
let doublePi = Double(three) + pointOneFourOneFiveNine // doublePi equals 3.14159, and is inferred to be of type Double
//: Floating-point to integer conversion must also be made explicit. An integer type can be initialized with a `Double` or `Float` value:
let integerPi = Int(pi) // integerPi equals 3, and is inferred to be of type Int
//: Floating-point values are always truncated when used to initialize a new integer value in this way.
//:
//: ## Type Aliases
//: *Type aliases* define an alternative name for an existing type. You define type aliases with the `typealias` keyword.
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min // maxAmplitudeFound is now 0
//:
//: ## Booleans
//: Swift has a basic *Boolean* type, called `Bool`. Boolean values are referred to as `logical`, because they can only ever be true or false. Swift provides two Boolean constant values, `true` and `false`:
let orangesAreOrange = true
let turnipsAreDelicious = false
//:
//: Boolean values are particularly useful when you work with conditional statements such as the `if` statement:
if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
} // Prints "Eww, turnips are horrible."
//:
//: Swift’s type safety prevents non-Boolean values from being substituted for `Bool`. The following example reports a compile-time error:
/*let i = 1
if i {
    // this example will not compile, and will report an error
} */
//: However, the alternative example below is valid:
let i = 1
if i == 1 {
    // this example will compile successfully
}
//:
//: ## Tuples
//: *Tuples* group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.
let http404Error = (404, "Not Found") // http404Error is of type (Int, String), and equals (404, "Not Found")
//: It can be described as “a tuple of type `(Int, String)`”.
//:
//: We can *decompose* a tuple’s contents into separate constants or variables, which then can be accessed as usual:
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)") // Prints "The status code is 404"
print("The status message is \(statusMessage)") // Prints "The status message is Not Found"
//:
//: If we need only some of the tuple’s values, ignore parts of the tuple with an underscore (`_`) when you decompose the tuple:
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)") // Prints "The status code is 404"
//:
//: Alternatively, access the individual element values in a tuple using index numbers starting at zero:
print("The status code is \(http404Error.0)") // Prints "The status code is 404"
print("The status message is \(http404Error.1)") // Prints "The status message is Not Found"
//:
//: We can name the individual elements in a tuple when the tuple is defined:
let http200Status = (statusCode: 200, description: "OK")
//: If we name the elements in a tuple, we can use the element names to access the values of those elements:
print("The status code is \(http200Status.statusCode)") // Prints "The status code is 200"
print("The status message is \(http200Status.description)") // Prints "The status message is OK"
//:
//: Tuples are particularly useful as the return values of functions. A function that tries to retrieve a web page might return the `(Int, String)` tuple type to describe the success or failure of the page retrieval. By returning a tuple with two distinct values, each of a different type, the function provides more useful information about its outcome than if it could only return a single value of a single type.
//:
//: ## Optionals
//: An *optional* represents two possibilities: Either there *is* a value, and you can unwrap the optional to access that value, or there *isn’t* a value at all.
//: The example below uses the initializer to try to convert a `String` into an `Int`:
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) // convertedNumber is inferred to be of type "Int?", or "optional Int"
//: Because the initializer might fail, it returns an *optional* `Int`, rather than an `Int`. An optional `Int` is written as `Int?`, not `Int`. The question mark indicates that the value it contains is optional, meaning that it might contain *some* `Int` value, or it might contain *no value at all*.
//:
//: ### nil
//: You set an optional variable to a valueless state by assigning it the special value `nil`:
var serverResponseCode: Int? = 404 // serverResponseCode contains an actual Int value of 404
serverResponseCode = nil // serverResponseCode now contains no value
//:
//: If you define an optional variable without providing a default value, the variable is automatically set to `nil` for you:
var surveyAnswer: String? // surveyAnswer is automatically set to nil
//:
//: ### If Statements and Forced Unwrapping
//: You can use an `if` statement to find out whether an optional contains a value by comparing the optional against `nil`. You perform this comparison with the “equal to” operator (==) or the “not equal to” operator (!=).
//:
//: If an optional has a value, it’s considered to be “not equal to” `nil`:
if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
} // Prints "convertedNumber contains some integer value."
//:
//: Once you’re sure that the optional *does* contain a value, you can access its underlying value by adding an exclamation mark (!) to the end of the optional’s name. The exclamation mark effectively says, “I know that this optional definitely has a value; please use it.” This is known as *forced unwrapping* of the optional’s value:
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
} // Prints "convertedNumber has an integer value of 123."
//:
//: ### Optional Binding
//: You use *optional binding* to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable. Optional binding can be used with `if` and `while` statements to check for a value inside an optional, and to extract that value into a constant or variable, as part of a single action.
//:
//: You can rewrite the `possibleNumber` example from the *Optionals* section to use optional binding rather than forced unwrapping:
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" could not be converted to an integer")
} // Prints "The string "123" has an integer value of 123"
//: This code can be read as:
//: “If the optional `Int` returned by `Int(possibleNumber)` contains a value, set a new constant called `actualNumber` to the value contained in the optional.”
//:
//: ### Implicitly Unwrapped Optionals
//: Sometimes it’s clear from a program’s structure that an optional will *always* have a value, after that value is first set. In these cases, it’s useful to remove the need to check and unwrap the optional’s value every time it’s accessed, because it can be safely assumed to have a value all of the time.
//:
//: These kinds of optionals are defined as *implicitly unwrapped optionals*. You write an implicitly unwrapped optional by placing an exclamation mark (`String!`) rather than a question mark (`String?`) after the type that you want to make optional.
//:
//: The following example shows the difference in behavior between an optional string and an implicitly unwrapped optional string when accessing their wrapped value as an explicit `String`:
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark
//: You can think of an implicitly unwrapped optional as giving permission for the optional to be unwrapped automatically whenever it’s used. Rather than placing an exclamation mark after the optional’s name each time you use it, you place an exclamation mark after the optional’s type when you declare it.
//:
//: You can still treat an implicitly unwrapped optional like a normal optional, to check if it contains a value:
if assumedString != nil {
    print(assumedString!)
} // Prints "An implicitly unwrapped optional string."
//:You can also use an implicitly unwrapped optional with optional binding, to check and unwrap its value in a single statement:
if let definiteString = assumedString {
    print(definiteString)
} // Prints "An implicitly unwrapped optional string."
