//: [Previous](@previous)

import Foundation


enum Student {
    case elemantary, middleSchool, highSchool
    case none
    
    init() {
        self = .none
    }
    
    init(koreanAge: Int) {
        
        switch koreanAge {
        case 8...13:
            self = .elemantary
        case 14...16:
            self = .middleSchool
        case 17...19:
            self = .highSchool
        default:
            self = .none
        }
        
    }
    
    init(bornAt: Int, currentYear: Int) {
        self.init(koreanAge: currentYear - bornAt + 1)
    }
}

let grade = Student(bornAt: 2000, currentYear: 2010)

print(grade)




enum Student2: String {
    case elementary = "초등학생", middle = "중학생", high = "고등학생"
    
    init?(koreanAge: Int) {
        
        switch koreanAge {
        case 8 ... 13:
            self = .elementary
        case 14 ... 16:
            self = .middle
        case 17 ... 19:
            self = .high
            
        default:
           return nil
        }
    }
    
    init?(bornAt: Int, currentYear: Int) {
        self.init(koreanAge: currentYear - bornAt + 1)
    }
}

let school22 = Student2(koreanAge: 12)

let school = Student2(bornAt: 1993, currentYear: 2010)


struct Student4 {
    var name: String?
    var number: Int?
}

class StudentClass {
    var student: [Student4] = {
        var arr: [Student4] = [Student4]()
       
        for num in 1 ... 15 {
            var student: Student4 = Student4(name: nil, number: num)
            arr.append(student)
        }
        
        return arr
        
    }()
}

let myClass = StudentClass()
print(myClass.student.count)


public struct SomeType {
    private var count: Int = 0
    
    public var publicStoredProperty: Int = 0
    
    public private(set) var publicGetProperty: Int = 0
    
    var internalComputedProperty: Int {
        get {
            return count
        }
        
        set {
            count += 1
        }
    }
    
     private(set) var internalGetonlyComputedProperty: Int {
        get {
            return count
        }
        
        set {
            count += 1
        }
    }
    
    
    public subscript() -> Int {
        get {
            
            return count
        }
        
        set {
            
            count += 1
        }
    }
    
    
    public subscript(some: Int) -> Int {
        get {
            return count
        }
        
        set {
            count += 1
        }
    }
    
}

var someInstance: SomeType = SomeType()

someInstance.internalComputedProperty = 100
//someInstance.internalGetonlyComputedProperty = 100
//someInstance.publicGetProperty = 100
someInstance.publicStoredProperty = 100

//: [Next](@next)
