import UIKit

// MARK: - Day 1

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


var ageDescription = "Ali's age is \(age)"

// let can't change later
let taylor = "Swift"


//MARK: - Day 3

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divides = firstScore / secondScore

let remainder = 13 % secondScore

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers Gonna"
let action = fakers + " Fake"


let firstHalf = ["Paul", "John"]
let secondHalf = ["George", "Ringo"]
let beatle2 = firstHalf + secondHalf

var score = 95
    score -= 90

var qoute = "The rain in Spain falls mainly on the"
    qoute += "Spaniards"

let thirdScore = 6
let fourthScore = 4

thirdScore == fourthScore
thirdScore != fourthScore
thirdScore < fourthScore
thirdScore >= fourthScore

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces - Lucky")
} else if firstCard + secondCard == 21{
    print("Black Jack")
} else {
    print("Regular Cards")
}

let age1 = 12
let age2 = 21

if (age1 > 18 && age2 > 18) {
    print("Both are over 18")
}

if (age1 > 18 || age2 > 18) {
    print("One of'em is over 18")
}

let thirdCard = 11
let fourthCard = 10

print(thirdCard == fourthCard ? "Cards are the same": "Cards are different")

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap warm up")
case "sunny":
    print("Wear sunscree")
    fallthrough
default:
    print("Enjoy your day")
}


let point = 85

switch point {
case 0..<50:
    print("You failed badly!")
case 50..<85:
    print("You did OK!")
default:
    print("You did great!")
}
