
struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func fullNam() -> String {
        if middleName == nil {
            return firstName + " " + lastName
        } else {
            return firstName + " " + middleName! + " " + lastName // optionals can be "force unwrapped" with the suffixed exclamation point, do NOT use if you can help it because it is overly brute
        }
        
    }
}

// String != Optional<String>

let me = Person(firstName: "Tim", middleName: nil, lastName: "Holmes")

let airportCodes = ["CDG": "Char De Gaul"]

// Optional binding solves the ! suffix

if let newYorkAirport = airportCodes["JFK"] {
    // the newYorkAirport variable is only available here where it has been unwrapped
    print(newYorkAirport)
} else {
    print("key doesn't exist")
}

let weatherDictionary: [String : [String :  String]] = [
    "currently": ["temp": "22.3"],
    "daily": ["temp": "20.5"],
    "weekly": ["temp": "21.7"],
]

// nested optional bindings with If Let - this will create a Pyramid of doom

if let dailyWeather = weatherDictionary["daily"] {
    if let highTemp = dailyWeather["temperature"] {
        print(highTemp)
    }
} else {
    print("No daily weather")
}

// better optional binding with If Let, preferred way

if let dailyWeather = weatherDictionary["daily"], let highTemp = dailyWeather["temp"] {
    print(highTemp)
} else {
    print("No high temp")
}

// downsides to if let - Creates a pyramid of doom and forces you to use force unwrapping when you're dealing with Optionals and validating endpoint

struct Friend {
    let name: String
    let age: String
    let address: String?
    
    
}

func new(friendDictionary fDic: [String : String]) -> Friend? {
    guard let name = fDic["name"], let age = fDic["age"]  else {
        return nil
    }
    
    let address = fDic["address"]
    
    return Friend(name: name, age: age, address: address)
}

let homie = new(friendDictionary: ["name": "Mike", "age": "young", "address": "10 cali ave"])


//

struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(dict: [String : String]) {
        guard let title = dict["title"], let author = dict["author"] else {
            return nil
        }
        
        self.title = title
        self.author = author
        self.price = dict["price"]
        self.pubDate = dict["pubDate"]
    }
}

// init with a ? is a failable initializer, ie it may or may not return an instance
let omam = Book(dict: ["title": "east of eden", "author": "steinbeck", "price": "1 billion dollars"])
