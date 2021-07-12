//: [Previous](@previous)

import Foundation

prefix operator **
prefix func ** (value: Int) -> Int {
    return value * value
}

let mintueFive = -5
let sqrtMinusFive = **mintueFive


prefix func ! (value: String) -> Bool {
    return value.isEmpty
}

var stringValue = "sintaek"
var isEmrtyString = !stringValue


postfix operator **
postfix func ** (value: Int) -> Int {
    return value + 10
}

let five = 5
let fivePlusTen = **five**
// prefix postfix 둘다 사용하면 postfix부터 실행되는것을 알수가있다.


infix operator **: MultiplicationPrecedence

func ** (lhs: String, rhs: String) -> Bool {
    return lhs.contains(rhs)
}

let helloYagom = "Hello yagom"
let yagom = "yagom"
let isContatinsYgom = helloYagom ** yagom


class Car {
    var modelYear: Int?
    var modelName: String?
}


struct SmartPhone {
    var company: String?
    var model: String?
    
}

func == (lhs: Car, rhs: Car) -> Bool {
    return lhs.modelName == rhs.modelName
}


func == (lhs: SmartPhone, rhs: SmartPhone) -> Bool {
    return lhs.model == rhs.model
}

let myCar = Car()
myCar.modelName = "benz"

let yourCar = Car()
yourCar.modelName = "audi"

var myPhone = SmartPhone()
myPhone.model = "iphone 12"

var yourPhone = SmartPhone()
yourPhone.model = "iphone 11"

print(myCar == yourCar)
print(myPhone == yourPhone)



//: [Next](@next)
