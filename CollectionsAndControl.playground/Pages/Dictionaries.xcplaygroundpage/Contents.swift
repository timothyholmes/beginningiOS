
// dictionaries are key value pairs, order is not preserved

var airportCode: [String:String] = [
    "LGA": "La Quardia",
    "LHR": "Heathrow",
    "CDG": "Charles de G",
    "HGK": "Hong Kong",
    "DXB": "Dubai"
]

airportCode["LGA"]

// insert / update

airportCode["LGA"] = "LaLa"
airportCode["SYD"] = "Fin"

airportCode.updateValue("Dunder", forKey: "DNR")

// remove

airportCode["DXB"] = nil
airportCode.removeValue(forKey: "CDG")

let newYorkAirport = airportCode["LGA"]
type(of: newYorkAirport) // this bad boy is an Optional value, dictionary gets always return this type

// code challenge

var iceCream: [String:String] = [
    "CC": "Chocolate Chip",
    "AP": "Apple Pie",
    "PB": "Peanut Butter"
]

iceCream.updateValue("Rocky Road", forKey: "RR")

let applePie = iceCream["AP"]

iceCream.updateValue("Chocolate Chip Cookie Dough", forKey: "CC")
