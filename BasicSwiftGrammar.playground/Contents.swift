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









