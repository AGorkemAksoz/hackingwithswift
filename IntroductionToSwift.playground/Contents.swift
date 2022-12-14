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
    let description = action("N??rburgring")
    print(description)
    print("Let's race")
}

travel5 {
    "I'm going to \($0) with my 350Z"
}

func travel6(action: (String, Int) -> String){
    print("I'm getting ready to go")
    let description = action("N??rburgring", 90)
    print(description)
    print("I've arrived")
}
travel6 {
    "I'm going to \($0) at \($1) miles per hour"
}

// MARK: - Day 8

struct Sport {
    var name: String
}
var tennis = Sport(name: "Tennis")
print(tennis.name)

struct Sport2 {
    var name: String
    var isOlympicSport: Bool
    
    
    var olympicStatus: String {
        if isOlympicSport{
            return "\(name) is an Olympic Sport"
        }else {
            return "\(name) is not an Olympic Sport"
        }
    }
}

var chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)

print(chessBoxing.olympicStatus)

struct Progress {
    var task: String
    var amount: Int{
        didSet{
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading Data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

struct City {
    var name: String
    var population: Int
    
    func collectTaxes() -> Int{
        return population * 1000
    }
}

var london = City(name: "London", population: 9_000_000)
london.collectTaxes()


struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

let string = "Do or do not, there is no try"
let intInString = "759"

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())
print(intInString.sorted())


var toys = ["Woody"]

print(toys.count)

toys.append("Buzz")

toys.firstIndex(of: "Buzz")

print(toys.sorted())

toys.remove(at: 0)

var fibonacci = [1, 1, 2, 3, 5, 8]
fibonacci.sorted() == [1, 2, 3, 5, 8]


//MARK: - Day 9

struct User {
    var userName: String
    
    init() {
      userName = "Anynomous"
      print("Creating new Use")
    }
}

var user = User()
user.userName = "twostraws"

struct Person2 {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var user2 = Person2(name: "Taylor")

struct FamilyTree {
    init() {
        print("Creating family tree")
    }
}

struct Person3 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name:String) {
        self.name = name
    }
}

var eddy = Person3(name: "Eddy")
eddy.familyTree

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed = Student(name: "Ed")
let taylor2 = Student(name: "Taylor")

print(Student.classSize)

struct Person4 {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let ed2 = Person4(id: "12345")

print(ed2.identify())

// MARK: - Day 10

class Dog{
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodel")


class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy2 = Poodle(name: "Poppy")
print(poppy2.name)
print(poppy2.breed)

poppy.makeNoise()
poppy2.makeNoise()

final class Dog2 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

//class pitbull: Dog2{
//    Inheritance from a final class 'Dog2'
//}

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justing Bieber"
print(singer.name)

class Person5 {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person5()
    person.printGreeting()
}

class Singer2 {
    let name = "Taylor Swift"
}

let taylor3 = Singer2()
//taylor3.name = "Ed Sheeran"
print(taylor3.name)

// MARK: - Day 11

protocol Identifiable {
    var id: String { get set}
}

struct User3: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation( days: Int )
}

protocol Employee: Payable, NeedsTraining, HasVacation { }


extension Int {
    func squared() -> Int {
        return self*self
    }
}

let number2 = 8
print(number2.squared())

extension Int {
    var isEven: Bool{
        return self % 2 == 0
    }
}

print(number2.isEven)

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles2 = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles2.summarize()

protocol Identifiable2 {
    var id: String { get set }
    func identify()
}

extension Identifiable2 {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User2: Identifiable2 {
    var id: String
}

let twostraws2 = User2(id: "twostraws")
twostraws2.identify()

// MARK: - Day 12

var age3: Int? = nil

age = 28

var name2: String? = nil

//name2 = "G??rkem"

if let unwrapped = name2 {
    print("\(unwrapped.count)")
}else {
    print("Missing name.")
}

func greet2(_ name: String?) {
    guard name != nil else {
        print("You didn't provide a name")
        return
    }
    print("Welcome \(name ?? "Mr. Nobody")")
}

let str2: String = "5"
let num = Int(str2)!

let age4: Int! = nil

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user4 = username(for: 15) ?? "Anonymous"

let names = ["Paul", "George", "John", "Ringo"]
let beatels3 = names.first?.uppercased()

struct Person6 {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        }else {
            return nil
        }
    }
}

class Animal { }
class Fish: Animal { }

class Dog3: Animal {
    func makeNoise() {
        print("Woof woof!")
    }
}

let pets = [Fish(), Dog3(), Fish(), Dog3()]

for pet in pets {
    if let dog = pet as? Dog3{
        dog.makeNoise()
    }
}
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

