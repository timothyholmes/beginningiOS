// String Concat

let country = "USA"
let state = "Virginia"
let city = "Richmond"
let street = "S 19th Street"
let houseNumber = 12

// String Interpolation - JavaScript => `${} ${} ${}`

let interpolatedAddress = "\(houseNumber) \(street) \(city) \(state) \(country)"

let name = "Moth"
let greeting = "Hi there, \(name)."
let finalGreeting = greeting + " How are you?"

// ints

let progLang = "Swift"
let year = 2014

// decimals

// Doubles - at least 15 decimal digits, preferred type for decimals
// Floats - as little as 6 decimal digits

var version = 3.1

// booleans

let isAwesome = true // binary value under the hood

// type safety

// compiler can deduce types dude to "Type Inference"

let bestPlayer: String = "messi"
let currentYear: Int = 2018

let firstValue: Int = 2
let secondValue: Int = 4

let product: Int = firstValue * secondValue

let output: String = "The product of \(firstValue) times \(secondValue) is \(product)"
