
import UIKit

// enums get single names

// int enums auto increment, so only = 1 is needed
enum Day: Int {
    case sunday = 1
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

enum DayType {
    case weekend
    case weekday
}

func dayType(for day: Day) -> DayType {
    switch day {
    case .saturday, .sunday: return .weekend
    default: return .weekday
    }
}

func isNotificationMuted(on type: DayType) -> Bool {
    switch type {
    case .weekend: return true
    default: return false
    }
}

// associated enums

enum ColorComponent {
    case rgb(Float, Float, Float, Float)
    case hsb(Float, Float, Float, Float)
    
    func color() -> UIColor {
        switch self {
        case .rgb(let red, let green, let blue, let alpha):
            return UIColor(
                red: CGFloat(red / 255.0),
                green: CGFloat(green/255.0),
                blue: CGFloat(blue/255.0),
                alpha: CGFloat(alpha))
        case .hsb(let hue, let saturation, let brightness, let alpha):
            return UIColor(
                hue: CGFloat(hue / 360.0),
                saturation: CGFloat(saturation / 100.0),
                brightness: CGFloat(brightness / 100.0),
                alpha: CGFloat(alpha))
        }
    }
}

let color = ColorComponent.rgb(61.0, 120.0, 198.0, 1.0).color()

// enum members can come with default values, called "raw values", all of the same type
// associated values != raw values. Raw values are for always wanting a certain value, associated values
// are for setting it up on instance. Raw values can only use primitive Swift types, associated vlaues
// are cool with custom types.

enum Coin: Double {
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.10
    case quarter = 0.25
}

let coins: [Coin] = [.penny, .nickel, .dime, .dime, .quarter]

func sum(ofCoins coins: [Coin]) -> Double {
    var total: Double = 0
    
    for coin in coins {
        total += coin.rawValue
    }
    
    return total
}

sum(ofCoins: coins)

// if you specify String has the type and provide no raw values, it uses a String of the case name as the RV
enum HTTP: String {
    case post
    case get
    case put
    case delete
}

HTTP.delete.rawValue

enum HTTPStatusCode: Int {
    case success = 200
    case forbidden = 403
    case unauthorized = 401
    case notFound = 404
}

let statusCode = 200

// this finds the match and returns the enum case.
// Initializers for enums with rawValues is failable, it'll always return an optional
let httpStatusCode = HTTPStatusCode(rawValue: statusCode)

enum Compass: Int {
    case north = 1
    case south
    case east
    case west
}

let direction = Compass(rawValue: 2)
