//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
print("Hello. world")

/*********/
var myVariable = 1
var floatValue : float_t
floatValue = 4
myVariable = 3
let myConstant : Int
myConstant = 2

/*********/
let label = "The width is"
let width = 100
let labelWidth = label + " " + String(width)
let labelWidth2 = "\(label) \(String(width))"

/*********/
let apples = 9.0
let oranges = 10.0
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit"

/*********/
var shoppingList = ["fish","water"]
var shoppingPrice = [13,3]
shoppingList[1] = "apple"
var shoppingDic = ["name":"fish", "price":12,]
var price = shoppingDic["price"]
shoppingDic["price"] = "12"

/*********/
var emptyArray = [String]()

/*********/
let vegetable = "red pepper"
switch vegetable {
    
    case "celery":
        print("Add some raisins")
    
    case "cucumber", "watercress":
        print("That would make a good tea sandwich")
    
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    
    default:
        print("Everyting tastes good in soup.")
}

/*********/
for name: Int in shoppingPrice {
    print(name)
}

/*********/
var largest = 0
var largestKind = ""
let interestingNumbers = ["Prime":[2,3,5,7],"Square":[1,4,9,16,25]]
for (key, value) in interestingNumbers {
    for number in value {
        if number > largest {
            largestKind = key
            largest = number
        }
    }
}
print(largest)
print(largestKind)

/***********/
let individualScores = [10,9,33,11]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore+=3
    }
    else {
        teamScore+=1
    }
}
print(teamScore)

/***********/
var conditionalValue = 1
if conditionalValue < 2 {
    print(conditionalValue)
}

/***********/
var optionalString : String? = "Hello kitty"
print(optionalString == nil)

var optionalName: String? = "Swift"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
else {
    print(optionalName)
}

/***********/
let nickName: String? = nil
let fullName: String = "Swift"
let informalGreeting = "Hi \(nickName ?? fullName)"

/***********/
func sumOf(numbers:Int...) ->Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
print(sumOf())
print(sumOf(1,3,4,5))

/*********/
var factorial = 5
for i in 1..<5 {
    factorial = (5-i)*factorial
}
print(factorial)

var factorialTwo = 5
for var i = 1; i < 5; i++ {
    factorialTwo = (5-i)*factorialTwo
}
print(factorialTwo)

/*********/
var whileNumber = 2
while whileNumber < 3 {
    whileNumber += 1
}
print(whileNumber)

var whileNumber2 = 2
repeat {
    whileNumber2 += 1
} while whileNumber2 < 2
print(whileNumber2)

/*********/
var nameAndDay = ""
func greet(name: String, day: String, number: Int) ->String {
    return "Hello \(name), today is \(day), \(number)."
}
nameAndDay = greet("Swift", day: "Sunday", number: 1)
print(nameAndDay)

/*********/
func calculate(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score > max {
            max = score
        }
        else if score < min {
            min = score
        }
        sum += score
    }
    return (min,max,sum)
}
let statistics = calculate([5, 10, 39, 5])
print(statistics.sum)
print(statistics.1)

/*********/
func makeIncrementer() ->((Int,Int) ->Int) {
    func addOne(number:Int,second:Int) ->Int {
        return number+second
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(2,4))

/***********/
func square(a:Float) ->Float {
    return a*a
}
func cube(a:Float) ->Float {
    return a*a*a
}
func averageSumOfSquare(a:Float, b:Float) ->Float {
    return (square(a) + square(b))/2.0
}
func averageSumOfCube(a:Float, b:Float) ->Float {
    return (cube(a) + cube(b)) / 2.0
}
averageSumOfSquare(1.0, b: 3.0)
averageSumOfCube(2.0, b: 3.0)

/***********/
func averageOfSum(a:Float, b:Float, f:(Float ->Float)) ->Float {
    return (f(a) + f(b))/2.0
}
averageOfSum(2.0, b: 3.0, f: square)
averageOfSum(3.0, b: 3.0, f: cube)
let averageNewSum = averageOfSum(3, b: 4, f: {(x:Float) ->Float in return x*x})
print(averageNewSum)
//individualScores.map({
//    (number:Int) ->Int in
//    let result = number+3
//    return result
//})

//individualScores.map({
//    number in number+1})
//print(individualScores)

let mappedScores = individualScores.map({
    $0+1})
print(individualScores)
print(mappedScores)

individualScores.sort({
    $0 < $1
})

/*********/
func hasAnyMatches(list:[Int], condition:(Int) ->Bool) ->Bool {
    
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number:Int) ->Bool {
    return number < 10
}
var numbers = [20,13,4,9]
hasAnyMatches(numbers, condition: lessThanTen)

/*********/
let sortedNumbers = numbers.sort(){
    $0 < $1
}
print(sortedNumbers)

/*********/
class Shape {
    var numberOfSides = 0
    let numberOfPoint = 3
    func simpleDescription() ->String {
        return "A shape with \(numberOfSides) sides"
    }
    func simplePoint(point:Int) ->Int {
        return point
    }
}
var shape = Shape()
shape.numberOfSides = 1
var shapeDes = shape.simpleDescription()
print(shapeDes)

/*********/
class NameShape {
    var numberOfSides: Int = 0
    var name :String
    init(name:String) {
        self.name = name
    }
    func simpleDescription() ->String {
        return "A shape with a name \(name)"
    }
}
var nameShape = NameShape(name: "ssss")
var initName = nameShape.simpleDescription()

/*********/
class NameShapeTwo {
    var numberOfSides: Int
    init(number:Int) {
        print("init called")
        self.numberOfSides = number
    }
    deinit {
        print("deinit called")
        numberOfSides = 0
    }
    func addNumbers(number:Int) {
        numberOfSides += 3
    }
}
var shapeTwo :NameShapeTwo? = NameShapeTwo(number: 3)
print("numberOfSides : \(shapeTwo!.numberOfSides)")
shapeTwo = nil

/*********/
class Square: NameShape {
    var sideLength: Double
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    func area() ->Double {
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
var squareTest = Square(sideLength: 3.2, name: "subclass test")
squareTest.area()
squareTest.simpleDescription()
squareTest.name

/*********/
class EquilateralTriangle: NameShape {
    var sideLength: Double = 0.0
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var perimeter: Double {
        get {
            return sideLength*3.0
        }
        set {
            sideLength = newValue / 3.0
        }
//        set(perimeter) {
//            perimeter
//            sideLength = perimeter / 3.0
//        }
    }
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

/*********/
class EquilateralTriangleOne: NameShape {
    
    init(sideLength: Double, name: String) {
        self.tempLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var tempLength: Double = 0.0
    var sideLength: Double {
        get {
            print("getget")
            return self.tempLength
        }
        set {
            print("setset")
            self.tempLength = newValue
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(self.sideLength)."
    }
}
var triangleOne = EquilateralTriangleOne(sideLength: 3.5, name: "b triangle")
print(triangleOne.sideLength)
triangleOne.sideLength = 3.6
print(triangleOne.sideLength)

/*********/
class TriangleAndSquare {
    
    var triangleL: EquilateralTriangle {
        willSet {
            print("triangleL willSet")
            squareL.sideLength = newValue.sideLength
        }
        didSet {
            print("triangleL didSet")
        }
    }
    var squareL: Square {
        willSet {
            print("squareL willSet")
            triangleL.sideLength = newValue.sideLength
        }
        didSet {
            print("squareL didSet")
        }
    }
    init(size: Double, name:String) {
        // 少初始化任何一个对象，都会报错 
        // return from initializer without initializing all stored properties
        // 类似于 oc 的用来存储数据的 model，需要对象序列化一样
        squareL = Square(sideLength: size, name: name)
        triangleL = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 5.0, name: "another shape")
print(triangleAndSquare.squareL.sideLength)
print(triangleAndSquare.triangleL.sideLength)
triangleAndSquare.squareL = Square(sideLength: 10.0, name: "lager shape")
print(triangleAndSquare.triangleL.sideLength)

/*********/
enum Rank: Int {
    //enum case must declare a raw value when the preceding raw value is not an integer
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() ->String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue
let aceString = ace.simpleDescription()

/*********/
if let convertRank = Rank(rawValue: 3) {
    let threeDescription = convertRank.simpleDescription()
}

/*********/
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() ->String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.Hearts
let heartsDes = hearts.simpleDescription()




