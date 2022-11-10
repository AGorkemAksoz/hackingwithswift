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


//MARK: - Day 4

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Player gonna")

for _ in 1...5 {
    print("Play")
}

var number = 1

while number <= 20 {
    print(number)
    number+=1
}

print("Ready or not, here I come!")

number = 1

repeat {
    print(number)
    number+=1
}while number <= 20

print("Ready or not here I come!")

repeat {
    print("This is false")
} while false

var countDown = 10

while countDown>=0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now")
        break
    }
    countDown-=1
}
print("Blast off!")

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}


//MARK: - Day 5

func printHelp(){
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()

func square(number: Int){
    print(number*number)
}

square(number: 12)


//func square(numbers: [Int]) {
//    for number in numbers {
//        let squared = number * number
//        print("\(number) squared is \(squared).")
//    }
//}
//square(numbers: [2, 3, 4])



func square2(number:Int) -> Int{
    return number*number
}

let result5 = square2(number: 25)
print(result5)

func sayHello(to name: String){
    print("Hello, \(name)")
}
sayHello(to: "Taylor Swift")


func greet(_ person: String){
    print("Hello, \(person)!")
}
greet("Taylor")

func greet2(_ person:String, nicely: Bool = true){
    if nicely{
        print("Hello, \(person)")
    }else {
        print("Oh no, \(person) again")
    }
}

greet2("Taylor Swift")
greet2("Boris Johnson", nicely: false)


print("Haters", "gonna", "hate")

func square3(numbers: Int...) {
    for number in numbers{
        print("\(number) squared is \(number * number)")
    }
}

square3(numbers: 2,4,8,12,25)

enum PasswordError: Error{
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password"{
        throw PasswordError.obvious
    }
    return true
}

//checkPassword("password")

do {
    try checkPassword("password")
    print("That password is good")
} catch {
    print("You can't use that password")
}

func doubleInPlace(number: inout Int){
    number*=2
}

var myNum = 10

doubleInPlace(number: &myNum)

//func sumOfFactors(for number: Int) -> Int {
//    var sum = 0
//    for i in 1...number {
//        if number % i == 0 {
//            sum += i
//        }
//    }
//    return sum
//}
//let sum = sumOfFactors(for: 100)


// MARK: - Day 6

let driving = {
    print("I'm driving my car")
}

driving()

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

 driving2("London")

let drivingWithReturn = { (place: String) in
    return "I'm going to \(place) in my car"
}
let drivingToLiverpool = drivingWithReturn("Liverpool")

print(drivingToLiverpool)


func travel(action: () -> Void){
    print("I'm getting ready to go")
    action()
    print("I've arrived")
}

travel(action: driving)

func travel2(action: () -> Void){
    print("I'm getting ready to go")
    action()
    print("I've arrived")
}

travel2 {
    print("I'm driving my car")
}


// MARK: - Day 7

func travel3(action: (String) -> Void){
    print("I'm getting ready to go")
    action("London")
    print("I arrived!")
}

travel3 { (place: String) in
    print("I'm going to \(place) in my car")
}

func travel4(action: (String) -> String){
    print("I'm getting ready to go")
    let description = action("Liverpool")
    print(description)
    print("I've arrived")
}

travel4 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//func manipulate(numbers: [Int], using algorithm: (Int) -> Int) {
//    for number in numbers {
//        let result = algorithm(number)
//        print("Manipulating \(number) produced \(result)")
//    }
//}
//manipulate(numbers: [1, 2, 3]) { number in
//    return number * number
//}


func travel5(action: (String) -> String) {
    print("I'm getting ready to go")
    let description = action("Nürburgring")
    print(description)
    print("Let's race")
}

travel5 {
    "I'm going to \($0) with my 350Z"
}

func travel6(action: (String, Int) -> String){
    print("I'm getting ready to go")
    let description = action("Nürburgring", 90)
    print(description)
    print("I've arrived")
}
travel6 {
    "I'm going to \($0) at \($1) miles per hour"
}
