// three collections types in Swift-  Arrays, Dictionarys, Sets

var emptyShorthand: [Double] = [] // empty arrays need explict type
var emptyLonghand: Array<Double> = Array() // empty arrays need explict type

var todo = ["clean room", "apply for jobs", "cut the lime"] // type inferenced
var todoShorthand: [String] = ["clean room", "apply for jobs", "cut the lime"] // explict type
var todoLonghand: Array<String> = ["clean room", "apply for jobs", "cut the lime"] // explict type longhand

var mixedTypes: Array<Any> = [1,2,"3"] // mixed type arrays

// adding items to arrays

todo.append("buy groceries") // mutates todo

todo = todo + ["cook dinner"]

todo += ["eat dinner"]

// removing and adding at specific index

todo.remove(at: 1)

todo.insert("apply for jobs", at: 1)

// get count

todo.count

// Immutable array

let tasks = ["Mow the lawn"]

// this will error
// tasks.append("eat the grass")

// coding challenge 1

var arrayOfInts: [Int] = [1,2,3,4,5,6]

arrayOfInts.append(7)
arrayOfInts = arrayOfInts + [8]

let value: Int = arrayOfInts[4]
let discardedValue: Int = arrayOfInts.remove(at: 5)
