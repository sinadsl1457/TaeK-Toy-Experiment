//: [Previous](@previous)

import Foundation

class Person {
    var name: String
    
    init() {
        self.name = "unknown"
    }
    
   
}

class Student: Person {
    var major: String = "unknown"
    
    // 자신의 직접 이니셜라이저 구현
    init(major: String) {
        self.major = major
        super.init()
    }
    
    required override init() {
        major = "unknown"
        super.init()
    }
    
    required convenience init(name: String) {
        self.init()
        self.name = name
    }
}


class UniversityStudent: Student {
    var grade: String
    
    init(grade: String) {
        self.grade = grade
        super.init()
    }
    
    required init() {
        self.grade = "F"

        super.init()
    }
    
    required convenience init(name: String) {
        self.init()
        self.name = name
    }
    
    
}

let nova = UniversityStudent()
nova.grade
nova.name







//: [Next](@next)

