import UIKit

var str = "Hello, playground"

str="Goodbye"

var name = "Ali"


var age: Int = 28
var population: Int = 8_000_000

var multiLineBreakString: String = """
This goes
over multiple
lines
"""

var multiLineBreakString2: String = """
This goes \
over multiple\
lines
"""

print(multiLineBreakString)
print(multiLineBreakString2)

var pi: Double = 3.14
var awesome: Bool = true



var ageDescription = "Ali's age is \(age)"

// let can't change later
let taylor = "Swift"

//MARK: - Day 2

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

for member in beatles {
    print("\(member)")
}

// Sets collection of values just like arrays
//except they have two diffrences
// First items aren't stored in any order
// They storing randomly
// Second all items must be unique


let colors = Set(["Green", "Black", "White"])
let colors2 = Set(["red","green", "blue", "red", "blue"])

//Tuple
var famousName = (first : "Taylor", last: "Swift")
famousName.0
famousName.last

//Dictioneries
var heights: [String : Double] = [
    "Taylor Swift" : 1.78,
    "Ed Sheeran" : 1.73
]

heights["Ed Sheeran"]

let favoriteIceCream: [String:String] = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unkown"]

//Enums
let result = "Failure"
let result2 = "Failed"
let result3 = "Fail"

enum Result{
    case succses
    case failure
}

let result4 = Result.failure

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: String)
}

let talking = Activity.talking(topic: "Football")

enum Planets: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planets(rawValue : 2)

enum Planets2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let venus = Planets2(rawValue : 2)
