
// Binary operators - operators that use two operands

// the classics: +, -, /, *, %

// types have to match! float / double doesn't work. Double = Int / Int doesn't work.

let height: Double = 12
let width: Double = 5

let area: Double = height / width

// comparisons

height == width
height != width
height > width
height >= width
height < width
height <= width

// code challenge 1

// Enter your code below
let value = 200
let divisor = 5

let someOperation = 20 + 400 % 10 / 2 - 15
let anotherOperation = 52 * 27 % 200 / 2 + 5

// Task 1 - Enter your code below
let result: Int = value % divisor

// Task 2 - Enter your code below
let isPerfectMultiple: Bool = result == 0

let isGreater: Bool = someOperation >= anotherOperation

// Unary operators - operators that use one operand

// operators: +=, -=, !

var levelScore = 0
levelScore += 1
levelScore -= 1

let on: Bool = true
!on


