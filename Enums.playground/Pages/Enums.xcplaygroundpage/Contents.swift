
import UIKit

// enums get single names

enum Day {
    case sunday
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


// Example of UIBarButtonItem instance
// let someButton = UIBarButtonItem(title: "A Title", style: .plain, target: nil, action: nil)

enum BarButton {
    case done(String)
    case edit(String)
    
    func button() -> UIBarButtonItem {
        switch self {
        case .done(let title):
            return UIBarButtonItem(title: title, style: .done, target: nil, action: nil)
        case .edit(let title):
            return UIBarButtonItem(title: title, style: .plain, target: nil, action: nil)
        }
    }
}

let doneButton = BarButton.done("Save").button()
