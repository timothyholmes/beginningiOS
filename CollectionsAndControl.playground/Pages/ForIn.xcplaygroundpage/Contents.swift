
var todos: [String] = [
    "burn down the house",
    "feed the cat",
    "scare the neighbors"
]

todos.count

for todo in todos {
    print("I need to \(todo)")
}

// Looping over ranges

// close range operator => ...

let oneToFive = 1...5

// half open range operator => ..<

let oneToFiveNotIncFive = 1..<5

for number in oneToFive {
    print("Inc Five \(number)")
}

for number in oneToFiveNotIncFive {
    print("Not Inc Five \(number)")
}

// While and Repeat While

var index = 0

while index < todos.count {
    print(todos[index])
    index += 1
}

// essentially a do while

let condition: Bool = false

repeat {
    print("Logic goes here")
} while condition


// code challenge
let numbers = [2,8,1,16,4,3,9]
var sum = 0
var counter = 0

// Enter your code below
while counter < numbers.count {
    sum = sum + numbers[counter]
    counter += 1
}
