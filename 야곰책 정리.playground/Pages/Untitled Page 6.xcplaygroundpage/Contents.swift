//: [Previous](@previous)

import Foundation

struct BasicInformation {
    let name: String
    var age: Int
    
}

var yagomInfo: BasicInformation = BasicInformation(name: "sintaek", age: 99)

yagomInfo.age = 100

var friendInfo: BasicInformation = yagomInfo

print("yagoms's age: \(yagomInfo.age)")
print("friend's age: \(friendInfo.age)")

friendInfo.age = 999



struct CoordinatePoint {
    var y: Int
    var x: Int
}


var c = CoordinatePoint(y: 1, x: 2)

class Position {

    var coordinate: CoordinatePoint?
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
}

let p = Position(name: "sintaek")

p.coordinate = CoordinatePoint(y: 10, x: 20)




class Position2 {
    var point: CoordinatePoint
    let name: String
    init(name: String, point: CoordinatePoint) {
        self.name = name
        self.point = point
    }
    
}


let p2 = Position2(name: "sintaek", point: c)

p2.name
p2.point



class Account {
    var credit: Int = 0 {
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
            
        }
    }
   
    var dollerValue: Double {
        get {
            return Double(credit) / 1000.0
        }
        
        set {
            credit = Int(newValue * 1000)
            print("잔액을 \(newValue)달러로 변경 중입니다.")
        }
    }
    
}

class ForeignAccount: Account {
    override var dollerValue: Double {
        willSet {
            print("잔액이 \(dollerValue)달러에서 \(newValue)달러로 변경될 예정입니다.")
        }
        
        didSet {
            print("잔액이 \(oldValue)달러에서 \(dollerValue)달러로 변경되었습니다.")
        }
    }
}

let myAccount: ForeignAccount = ForeignAccount()
myAccount.credit = 1000
myAccount.dollerValue = 2








//: [Next](@next)
