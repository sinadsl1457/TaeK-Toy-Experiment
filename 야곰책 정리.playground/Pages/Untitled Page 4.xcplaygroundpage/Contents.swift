//: [Previous](@previous)

import Foundation

func hello(name: String) -> String {
    return "Hello \(name)"
}

let greeting = hello(name: "sintaek")
greeting



func sayHello(myName: String, yourName: String) -> String {
    return "Hello \(yourName)! I'm \(myName)"
}


let calling = sayHello(myName: "sintaek", yourName: "minsu")
print(calling)



func sayHello(_ name: String, _ times: Int) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    
    return result
}



print(sayHello("sintaek", 5))


func sayHello(to name: String, repeatcount times: Int) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    
    return result
}


func  sayHelloToFriends(me: String, friends names: String...) -> String {
    return "my name is \(me), i wanna introduce my friends okay, first: \(names)"
}

print(sayHelloToFriends(me: "sintaek", friends: "minsu", "minji", "micheal", "jhon"))


func  sayHelloToFriendsUp(me: String, friends names: String...) -> String {
    var result: String = ""
    
    for friend in names {
        result += "Hello \(friend)" + " "
    }
    
    result += "I'm" + "me" + "!"
    return result
}

print(sayHelloToFriendsUp(me: "sintaek", friends: "ji-soo"))


var numbers: [Int] = [1, 2, 3]

func nonReferenceParameter(_ arr: [Int]) {
    var copiedArr: [Int] = arr
    copiedArr[1] = 1
}


func nonReferenceParameter(_ arr: inout [Int]) {
    
    arr[1] = 1
}

 nonReferenceParameter(numbers)
print(numbers[1])

 nonReferenceParameter(&numbers)
print(numbers[1])

typealias CalculateTwoInts = (Int, Int) -> Int
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}


var mathFuction = addTwoInts(_:_:)

func printMathResults(_ mathFuction: CalculateTwoInts, _ a: Int, _ b: Int) {
    print("Result: \(mathFuction(a, b))")
}


printMathResults(addTwoInts(_:_:), 10, 20)

func chooseMathFuction(_ toAdd: Bool) -> CalculateTwoInts {
    return toAdd ? addTwoInts(_:_:) : multiplyTwoInts(_:_:)
}

printMathResults(chooseMathFuction(true), 8, 6)



typealias MoveFUnc = (Int) -> Int


func FuctionForMove(_ shouldGoLeft: Bool) -> MoveFUnc {
    
    func goRight(_ currentPosition: Int) -> Int {
        return currentPosition + 1
    }

    func goLeft(_ currentPosition: Int) -> Int {
        return currentPosition - 1
    }

    
    
    return shouldGoLeft ? goLeft : goRight
}


var position: Int = -4


let moveToZero: MoveFUnc = FuctionForMove(position > 0)


while position != 0 {
    print("\(position)...")
    position = moveToZero(position)
}

print("원점 도착!")

func crashAndBurn() -> Never {
    fatalError("Something very very bad happened")
}

func someFuction(isAllIsWell: Bool) {
    guard isAllIsWell else {
        print("마을에 도둑이 들었습니다!")                                               
        crashAndBurn()
    }
    
    print("All is well")
}

//: [Next](@next)
