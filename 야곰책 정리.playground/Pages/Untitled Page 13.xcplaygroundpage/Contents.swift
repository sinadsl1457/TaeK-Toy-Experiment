//: [Previous](@previous)

import Foundation

class Person {
    var name: String = ""
    var age: Int = 0 {
        didSet {
            print("Person age: \(age)")
        }
    }
    
    var koreanAge: Int {
        return age + 1
    }
    
    var fullName: String {
        get {
            return name
        }
        
        set {
            
            name = newValue
        }
    }
    
}


class Student: Person {
    var grade: String = "F"
    
    override var age: Int {
        didSet {
            print("Student Age: \(age)")
        }
    }
    
    override var koreanAge: Int {
        get {
            return super.koreanAge
        }
        
        set {
            age = newValue
        }
        
    }
    
    override var fullName: String {
        didSet {
            print("Full Name: \(fullName)")
        }
    }
    
}

let student = Student()

student.name = "sintaek"
student.age = 28
print(student.koreanAge)


class Person2 {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class Student2: Person2 {
    var major: String
    
    init(name: String, age: Int, major: String) {
        self.major = major
        super.init(name: name, age: age)
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 20, major: "asd")
    }
}


class Person3 {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 20)
    }
}


class Student3: Person3 {
    var major: String
    
    init(name: String, age: Int, major: String) {
        self.major = major
        
        super.init(name: name, age: age)
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 20, major: "art")
    }
}





//: [Next](@next)
