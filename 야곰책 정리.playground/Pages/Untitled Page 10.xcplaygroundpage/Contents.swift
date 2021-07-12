//: [Previous](@previous)

import Foundation

let numbers = [1, 2, 3]

var sum: Int = numbers.reduce(0) { (result: Int, next: Int) -> Int in
    print("\(result) + \(next)")
    return result + next
}

print(sum)



var subtract: Int = numbers.reduce(0) { (result: Int, next: Int) -> Int in
    print("\(result) - \(next)")
    return result - next
}

print(subtract)




var sumFromThree: Int = numbers.reduce(3) {
    
 print("\($0) + \($1)")
   return $0 + $1
}

print(sumFromThree)



var subtractFromThree: Int = numbers.reduce(3) {
    print("\($0) - \($1)")
      return $0 - $1
}

print(subtractFromThree)

let names = ["Chope", "Jay", "Joker", "Nova"]

let reduceName = names.reduce("sintaek's friend : ") {
    return $0 + " " + $1
}

print(reduceName)


sum = numbers.reduce(into: 0, { (result: inout Int, next: Int) in
    print("\(result) + \(next)")
    
     result += next
})


subtractFromThree = numbers.reduce(into: 3, {
    
    $0 -= $1
})


var dubledNumbers = numbers.reduce(into: [1, 2]) { (result: inout [Int], next: Int) in
    
 
    
    result.append(next * 2)
    
}

print(dubledNumbers)

dubledNumbers = [1, 2] + numbers.filter { $0.isMultiple(of: 2)}.map{ $0 * 2 }

print(dubledNumbers)

var upperCasedNames = names.reduce(into: []) {
    $0.append($1.uppercased())
}

upperCasedNames = names.map { $0.uppercased()}
print(upperCasedNames)





//: [Next](@next)
