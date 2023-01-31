// combine string and use conversion method using String(var)
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

print(widthLabel)

// include values in strings: Write the value in parentheses, and write a backslash (\) before the parentheses.
let apples: Float = 3.0
let oranges: Float = 5.2
let appleSummary = "\tI have \(apples) apples."
let fruitSummary = "\tI have \(apples + oranges) pieces of fruit."

print(appleSummary)    // already add \n at the end
print(fruitSummary + "\n")


// Use three double quotation marks (""") for strings that take up multiple lines. Indentation at the start of each quoted line is removed, as long as it matches the indentation of the closing quotation marks.
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
print(quotation + "\n")


// ARRAYS
// Create arrays and dictionaries using brackets ([]), and access their elements by writing the index or key in brackets. A comma is allowed after the last element.
var fruits = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"   // re-modify the second element

print(fruits[0])
print(fruits[1])
print(fruits[2])

// IF USE prinnt(fruits) because it will print the elements as a whole string, etc. it will print ["strawberries", "limes", "tangerines"]

// the array below is an dictionary, kinda similar to parallel array
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"    // add a new element to the array

// NOTE: Arrays automatically grow as you add elements.

print(occupations["Malcolm"])
print(occupations["Jayne"])        

fruits.append("blueberries")
print(fruits)

// To create an empty array or dictionary, use the initializer syntax.
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

// If type information can be inferred, you can write an empty array as [] and an empty dictionary as [:]—for example, when you set a new value for a variable or pass an argument to a function.

fruits = []        // all the elements are erased
print(fruits)
print("========================================================================\n\n========================================================================")
occupations = [:]
// ========================================================================

/* 
 COTROL THE FLOW 
 - Use if and switch to make conditionals, and use for-in, while, and repeat-while to make loops. Parentheses around the condition or loop variable are optional. Braces around the body are required.
 */

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {        // score here is like index, no need to specify the type
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print("teamScore is " + String(teamScore))

/*
 In an if statement, the conditional must be a Boolean expression—this means that code such as if score { ... } is an error, not an implicit comparison to zero.

 You can use if and let together to work with values that might be missing. These values are represented as optionals. An optional value either contains a value or contains nil to indicate that a value is missing. Write a question mark (?) after the type of a value to mark the value as optional.
 -> So be mindful when NAMING THE VARIABLE
 */

var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false"

var optionalName: String? = nil        // nil here is null
var greeting = "Hello!"
if let name = optionalName {           // name here only exists with in the if code block
    greeting = "Hello, \(name)"
} else {
    //if optionalName == nil {
        greeting = "Hello, anonymous!"
    //}
}
print(greeting)

// Another way to handle optional values is to provide a default value using the ?? operator. If the optional value is missing, the default value is used instead.
let nickname: String? = nil            // when the string variable is optional which means the variable can be null (nil in this case) needs to have '?' after String
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
// the operation ?? here compares the two variables' value. If any is nil, the other defaul value will be used
// but if they both are nil, then print nil
print(informalGreeting)

// You can use a shorter spelling to unwrap a value, using the same name for that unwrapped value.
if let nickname {            // here because nickname is nil; thus, the block of code is skipped
    print("Hey, \(nickname)")
}


// Switches support any kind of data and a wide variety of comparison operations—they aren’t limited to integers and tests for equality.
// After executing the code inside the switch case that matched, the program exits from the switch statement. Execution doesn’t continue to the next case, so you don’t need to explicitly break out of the switch at the end of each case’s code.

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):    // new operator
    print("Is it a spicy \(x)?")
default:        // MUST HAVE
    print("Everything tastes good in soup.")
}

// NEW OPERATOR: let x where x.hasSuffix("suffix string"). This copies the variable and stores it in x, then find the "suffix string" in x. IF found, unwrap the code block


// FOR LOOP
// You use for-in to iterate over items in a dictionary by providing a pair of names to use for each key-value pair. Dictionaries are an unordered collection, so their keys and values are iterated over in an arbitrary order.
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
for (_, numbers) in interestingNumbers {      // what's the purpose of the '_'
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print("The largest number is " + String(largest))
// Prints "25"

// WHILE AND REPEAT WHILE LOOP (repeat while is do while loop in c++)
var n = 2
while n < 100 {
    n *= 2
}
print("n in while is " + String(n))
// Prints "128"

n = 2
repeat {
    n *= 2
} while n < 100
print("n in repeat while is " + String(n))
// Prints "128"

// You can keep an index in a loop by using ..< to make a range of indexes.
// Use ..< to make a range that omits its upper value, and use ... to make a range that includes both values.
var total = 0
for i in 0...4 {
    total += i
}
print("The total is " + String(total))




