
enum Coin: Double {
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.10
    case quarter = 0.25
}

let wallet: [Coin] = [.penny, .nickel, .dime, .dime, .quarter, .dime, .nickel, .penny, .dime, .nickel, .quarter]

var count = 0

for coin in wallet {
    switch coin {
    case .quarter: count += 1
    default: continue
    }
}

// get you some sugar =>

count = 0

for case .quarter in wallet {
    count += 1
}

// clean up switch statements with enums
for coin in wallet {
    if case .nickel = coin {
        print(":-(")
    } else if case .dime = coin {
        print(":-/")
    }
}


// use pattern matching for optional cases with .some() and .none
let someOp: Int? = 42

if case .some(let x) = someOp {
    print(x)
}

// Nil Coalescing Operator - ternary condition operator for optionals

let firstName: String? = "Tim"
let username = "timmytimtim"

var displayName: String = firstName ?? username
