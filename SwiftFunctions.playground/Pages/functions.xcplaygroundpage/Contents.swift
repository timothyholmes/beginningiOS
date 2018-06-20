
// functions with parameters and return values

func area(length: Int, width: Int) -> Int {
    return length * width
}

let lengthOfRoom: Int = 10
let widthOfRoom: Int = 12

let areaOfRoom: Int = area(length: lengthOfRoom, width: widthOfRoom)

print("The area of the room is \(areaOfRoom)")

// three ways to represent a Void return val

func voidFxOne() {}
func voidFxTwo() -> Void {}
func voidFxThree() -> () {}

// code challenge

func temperatureInFahrenheit(temperature: Double) -> Double {
    return temperature * 9 / 5 + 32
}

let todaysTempInCelcius: Double = 24.0

let todaysTempInFahrenheit: Double = temperatureInFahrenheit(temperature: todaysTempInCelcius)

print("Celcius: \(todaysTempInCelcius) Fahrenheit \(todaysTempInFahrenheit)")

// adding power to functions

/*
 naming conventions
 1. if the first arg in a function starts a prepositional phrase, the arg label should indicate that
 2. ^^^^^ Unless there're more than one arg, then the preposition should go into the func name
 3. function names should be able to be read grammatically correctly
*/

// external name / internal name

func greet(byName firstName: String) -> String {
    return "Hello, \(firstName)"
}

print(greet(byName: "Tim"))

// code challenge

func getRemainder(value a: Int, divisor b: Int) -> Int {
    return a % b
}

getRemainder(value: 10, divisor: 3)

// default values

func carpetCost(havingArea area: Int, carpetColor color: String = "tan") -> Int {
    // gray - $1
    // tan - $2
    // deep blue - $4
    
    var price = 0
    
    switch color {
    case "gray": price = 1 * area
    case "tan": price = 2 * area
    case "deep blue": price = 4 * area
    default: price = 0
    }
    
    return price
}

carpetCost(havingArea: 100)

// returning multiple values through Tuples


func carpetCostWithMultiReturns(havingArea area: Int, carpetColor color: String = "tan") ->
    (price: Int, carpetColor: String) {
    // gray - $1
    // tan - $2
    // deep blue - $4
    
    var price = 0
    
    switch color {
    case "gray": price = 1 * area
    case "tan": price = 2 * area
    case "deep blue": price = 4 * area
    default: price = 0
    }
    
    return (price, color)
}

let result = carpetCostWithMultiReturns(havingArea: 100)

result.0
result.1

result.price
result.carpetColor

// no label params

// func someFx(_ internalLabel: String) {}

// final code challenge

func coordinates(for location: String) -> (Double, Double) {
    switch location {
    case "Eiffel Tower": return (48.8582, 2.2945)
    case "Great Pyramid": return (29.9792, 31.1344)
    case "Sydney Opera House": return (33.8587, 151.2140)
    default: return (0,0)
    }
}

coordinates(for: "Great Pyramid")

