
// code challenge

var results: [Int] = []

for n in 1...100 {
    // Enter your code below
    if (n % 2 != 0 && n % 7 == 0) {
        results.append(n)
    }
    // End code
}


// switch statements

let cases: [String] = ["classic", "oldnews", "newschool", "nomatch"]

for valueToConsider in cases {
    switch valueToConsider {
    case "classic", "oldnews": print("case")
    case "newschool": print("city")
    default: print(valueToConsider)
    }
}

// code challenge

var europeanCapitals: [String] = []
var asianCapitals: [String] = []
var otherCapitals: [String] = []

let world = [
    "BEL": "Brussels",
    "LIE": "Vaduz",
    "BGR": "Sofia",
    "USA": "Washington D.C.",
    "MEX": "Mexico City",
    "BRA": "Brasilia",
    "IND": "New Delhi",
    "VNM": "Hanoi"]

for (key, value) in world {
    // Enter your code below
    switch key {
    case "BEL", "LIE", "BGR":
        europeanCapitals.append(value)
    case "IND", "VNM":
        asianCapitals.append(value)
    default: otherCapitals.append(value)
    }
    // End code
}

europeanCapitals
asianCapitals
otherCapitals

// fizzbuzz

for n in 1...100 {
    if n % 3 == 0 && n % 5 == 0 {
        print("FizzBuzz")
    } else if n % 5 == 0 {
        print("Buzz")
    } else if n % 3 == 0 && n % 5 == 0 {
        print("Fizz")
    } else {
        print(n)
    }
}
