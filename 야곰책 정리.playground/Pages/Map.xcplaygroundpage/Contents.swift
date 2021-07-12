//: [Previous](@previous)

import Foundation

let numbers = [0, 1, 2, 3, 4]

var doubleNumbers = [Int]()
var strings = [String]()

//for 문 사용
for number in numbers {
    doubleNumbers.append(number * 2)
    strings.append("\(number)")
}

print(doubleNumbers)
print(strings)

//map 메서드 사용
doubleNumbers.map { $0.isMultiple(of: 2) }


numbers.map {"\($0)"}


print(doubleNumbers)
print(strings)


let evenNumbers = [2, 4, 6, 8]
let oddNumbers = [1, 3, 5, 7]

let multiplyTwo: (Int) -> Int = { $0 * 2 }

let doubleEvenNumers = evenNumbers.map(multiplyTwo)
let doubleOddNumbers = oddNumbers.map(multiplyTwo)

let alphabetDictionary = ["a": "A", "b": "B"]

var keys = alphabetDictionary.map { (tuple: (String, String)) -> String in
    return tuple.0
}

keys = alphabetDictionary.map { $0.0 }

let values = alphabetDictionary.map { $0.key }
print(keys)
print(values)

var numberSet: Set<Int> = [1, 2, 3, 4, 5]

let resultSet = numberSet.map{ $0 * 2 }
print(resultSet)

let optionalInt: Int? = 3
let resultInt: Int? = optionalInt.flatMap { $0 * 2 }
print(resultInt)


let rang = (0 ... 3)
let resultRange = rang.map { $0 * 2 }
print(resultRange)



//: [Next](@next)
