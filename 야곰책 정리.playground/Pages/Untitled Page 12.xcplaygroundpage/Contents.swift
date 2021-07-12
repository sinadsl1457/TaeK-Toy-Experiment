//: [Previous](@previous)

import Foundation

class Perosn {
    var name: String = ""
    var age: Int = 0
    var KoreanAge: Int {
        return self.age + 1
    }
    
    var introduction: String {
        return "이름: \(name), 나이 : \(age)"
    }
    
}

class Student: Perosn {
    var grade: String = "f"
    
    override var introduction: String {
        return super.introduction + " " + "학점 : \(self.grade)"
    }
    
    override var KoreanAge: Int {
        get {
            return super.KoreanAge
        }
        
        set {
            self.age = newValue - 1
        }
    }
    
}


let s = Student()

s.grade = "A"
s.age = 14
s.name = "sintaek"
s.KoreanAge = 10
s.introduction


class Perosn2 {
    var name: String
    var age: Int
    
    init() {
        name = "unknown"
        age = 29
    }
    
    init?(name: String, age: Int) {
        if name.isEmpty {
            return nil
        }
        self.name = "unknown"
        self.age = 12
        
    }
    
    init?(age: Int) {
        if age < 0 {
            return nil
        }
        self.name = "unknown"
        self.age = age
    }
}


class Student2: Perosn2 {
    var major: String
    
    override init?(name: String, age: Int) {
        major = "Swift"
        super.init(name: name, age: age)
    }
    
    override init(age: Int) {
        major = "Swift"
        super.init()
    }
    
}





//: [Next](@next)
