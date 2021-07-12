//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

struct Stuff {
    var name: String
    var owner: Person
}


let yagom = Person(name: "sintaek")
let haha = Person(name: "haha")
let macbook = Stuff(name: "MacBook Pro", owner: yagom)


class LevelClass {
    
    var level: Int = 0 {
        didSet {
            // 프로퍼티 값이 변경되면 호출하는 프로퍼티 감시자
            print("level \(level)")
        }
    }
    
    // 레벨이 올랐을 떄 호출할 메서드
    
    func levelUp() {
        print("level up")
        level += 1
    }
    
    
    func levelDown() {
        print("level Down")
        level -= 1
        if level < 0 {
            reset()
        }
    }
    
    
    func jumpLevel(to: Int) {
        print("jump to \(to)")
        level = to
    }
    
    
    func reset() {
        print("Reset")
        level = 0
    }
    
    
}


let level = LevelClass()

level.levelUp()
level.levelDown()
level.levelDown()

struct LevelStruct {
    var level: Int = 0 {
        didSet {
            print("level \(level)")
        }
    }
    
    mutating func levelUp() {
        level += 1
    }
    
    
    mutating func levelDown() {
        level -= 1
        
        if level < 0 {
            reset()
        }
    }
    
    
    mutating func jumpLevelUp(_ Int: Int) {
        level += Int
    }
    
    
    mutating func reset() {
        level = 0
    }
    
    
}


enum OnOff {
    case on, off
    
    mutating func nextState() {
        self = self == .on ? .off : .on
    }
}


class AClass {
    static func staticTypeMethod() {
        print("me")
    }
    
    class func classTypeMethod() {
        print("class type")
    }

}

struct SystemVolume {
    static var volume: Int = 5
    
    static func mute() {
        self.volume = 0
    }
    
    
    
}


class Naviation {
    var volume: Int = 5
    
    func guideWay() {
        SystemVolume.mute()
    }
    
    
    func finishShouldWay() {
        SystemVolume.volume = self.volume
        
    }
    
    

}




SystemVolume.volume = 10

let myNavi: Naviation = Naviation()
myNavi.guideWay()
print(SystemVolume.volume)
myNavi.finishShouldWay()
print(SystemVolume.volume)


class SomeClass {
    init() {
        // 초기화 코드
    }
}


enum SomeEnum {
    case somecase
    
    init() {
        // 열거형은 초기화할 때 반드시 case를 하나가 되어야 합니다.
        self = .somecase
    }
}


class Person3 {
    let name: String
    var age: Int?
    
    init(name: String) {
        self.name = name
    }
}

let p = Person3(name: "sintaek")











//: [Next](@next)
