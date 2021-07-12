//: [Previous](@previous)

import Foundation

let numbers = [1, 2, 3, 4, 5, 6, 7]
 
var onlyMultiplyEvenNumber = numbers.filter { $0.isMultiple(of: 2)}.map { $0 * 3}.reduce(0) { $0 + $1 }

print(onlyMultiplyEvenNumber)


enum Gender {
    case male, female, unknown
}

struct Friend {
    let name: String
    let gender: Gender
    let location: String
    var age: UInt
}

var friends = [Friend]()

var result = friends.map{ Friend(name: $0.name, gender: $0.gender, location: $0.location, age: $0.age + 1)}

result = result.filter { $0.location != "서울" && $0.age >= 25 }

let string: String = result.reduce("서울 외의 지역에 거주하며 25세 이상인 친구 ") {
    $0 + "\n" + "\($1.name) \($1.location) \($1.gender) \($1.age)세"
}

print(string)


class Person {
    var name: String = ""
    var age: Int = 0
    
    var introduction: String {
        return "이름 : \(name), 나이: \(age)"
    }
    
    func speak() {
        print("abcdefg")
    }
    
    
    class func introduceClass() -> String {
        return "ㅁㄴㅇㅁㄴㅇㅁㄴㅇ"
    }
    
    
}

class student: Person {
    var grade: String = "f"
    
    func study() {
        print("strudy hard...")
    }
    
    override func speak() {
        print("asd")
    }
}


//: [Next](@next)
