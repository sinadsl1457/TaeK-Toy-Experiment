//: [Previous](@previous)

import Foundation


let names: [String] = ["wizplan", "plan", "eric", "jenny"]

func backwards(first: String, second: String) -> Bool {
    print("\(first) \(second) 비교중")
    return first > second
}


func ><T: Comparable>(lhs: T, rhs: T) -> Bool {
    return lhs > rhs
}

let reversed = names.sorted(by: > )
print(reversed)


func makeIncrementer(forIncrementer amount: Int) -> (() -> (Int)) {
    var runningtotal = 0
    func incrementer() -> Int {
        runningtotal += amount
        return runningtotal
    }
    
    return incrementer
}

let incerementeByTwo = makeIncrementer(forIncrementer: 2)

let first = incerementeByTwo()

let second = incerementeByTwo()

let third = incerementeByTwo()


class SomeClass {
    func runNoescaping(completion: () -> ()) {
        
    }
}

var arrNum = [1, 2, 3]



let number = [2, 4, 6, 8]

let evenNumberPredicate = { (number: Int) -> Bool in
    return number.isMultiple(of: 2)
}

let oddNumberPredicate = { (number: Int) -> Bool in
    return number % 2 == 1
}

func hasElemnts(In array: [Int], match predicate: (Int) -> Bool) -> Bool {
    return withoutActuallyEscaping(predicate) { escape in
        return (array.lazy.filter{ escape($0)}.isEmpty == false)
    }
}

let hasEvenNumber = hasElemnts(In: number, match: evenNumberPredicate)

let hasOddNumber = hasElemnts(In: number, match: oddNumberPredicate)

var customerInline = ["sintaek", "taek", "asd", "dfgdfg"]

let customerWait: () -> String = {
    customerInline.removeFirst()
}

print(customerInline.count)

print(customerWait())

print(customerInline.count)

var customerInline2 = ["asddd", "sintaek", "taek", "asd", "dfgdfg"]

func saveCustomer(_ customerProvider: () -> String) {
    print("now serving \(customerProvider())")
}


func doSomething(some: () -> String) {
    
}



var serveCustomer = ["asddd", "sintaek", "taek", "asd", "dfgdfg"]

func customerInline3(_ customerProvider: @autoclosure () -> String) {
    print(customerProvider())
}

customerInline3(serveCustomer.removeFirst())



//: [Next](@next)
