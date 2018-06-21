
struct User {
    var fullName: String
    var email: String
    var age: Int
}

var me = User(fullName: "Tim Tim", email: "yee@yee.yee", age: 25)
var you = me

you.fullName

you.email = "blast"

you.email
me.email

// ^^^ structs will update only the property of our instance. They copy the structs.
// VVV classes will update both if xClass == yClass. Classes are reference types.

class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int) {
        self.fullName = name
        self.email = email
        self.age = age
    }
}

var somePerson = Person(name: "a", email: "b", age: 55)
var anotherPerson = somePerson

somePerson.email = "ckass ckass"

somePerson.email
anotherPerson.email
