
class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
}

class Residence {
    var numberOfRooms = 1
    var address: Address?
}

class Person {
    var residence: Residence?
}

// these Classes do NOT need init methods because since everything is defaulted either by a hard default,
// or since the rest of the variables are Optionals, they are initialized to nil behind the scenes. This only
// works with variables obviously, because optionals are never constants by definition.

let tim = Person()

let address = Address()

address.street = "123 street"
address.buildingName = "big boy"
address.buildingNumber = "321"

let residence = Residence()

residence.address = address

tim.residence = residence

// optional chaining 🔥🔥🔥

let buildNumber = tim.residence?.address?.buildingNumber
