//: [Previous](@previous)

import Foundation

// type casting

class Coffee {
    let name: String
    let shot: Int
    
    var description: String {
        return "\(shot) shot(s) \(name)"
    }
    
    init(shot: Int) {
        self.shot = shot
        name = "coffee"
    }
}

class Latte: Coffee {
    var flavor: String
    
    override var description: String {
        return "\(shot) shot(s) \(flavor) Latte"
    }
    
    init(flavor: String, shot: Int) {
        self.flavor = flavor
        super.init(shot: shot)
    }
}

class Americano: Coffee {
    let iced: Bool
    
    override var description: String {
        return "\(shot) shot(s) \(iced ? "iced" : "hot") americano"
    }
    
    init(shot: Int, iced: Bool) {
        self.iced = iced
        super.init(shot: shot)
    }
    
}

let coffe = Coffee(shot: 4)
let latte = Latte(flavor: "dark", shot: 4)
let americano = Americano(shot: 4, iced: true)


protocol Someprotocol { }
class Someclass: Someprotocol { }

let intType = Int.self
let someprotocol = Someprotocol.self
let someclass = Someclass.self

if let orderOne: Americano = coffe as? Americano {
    print("this is americano")
} else {
    print(coffe.description)
}


if let actionOne: Latte = coffe as? Latte {
    print("this is latte")
}

func checkType(of item: AnyObject) {
    if item is Latte {
        print("item is Latte")
    } else if item is Americano {
        print("item is Americano")
    } else if item is Coffee {
        print("item is Coffee")
    } else {
        print("unknown type")
    }
}
checkType(of: coffe)

func checkAnyType(of item: Any) {
    switch item {
    case 0 as Int:
        print("zero as an Int")
    case 0 as Double:
        print("zero as a Double")
    default:
        break
    }
}

protocol Someprotocol2 {
    var settableProperty: String { get set }
    var notNeedToBeSettableProperty: String { get }
}

protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
    static var anotherTypeProperty: Int { get }
}

protocol Sendable {
    var from: String { get }
    var to: String { get }
}

class Message: Sendable {
    var sender: String
    var from: String {
        return sender
    }
    
    var to: String
    
    init(sender: String, receiver: String) {
        self.sender = sender
        to = receiver
    }
        
}

class Mail: Sendable {
    var from: String
    var to: String
    
    init(sender: String, receiver: String) {
        from = sender
        to = receiver
    }
}

// 무언가를 수신받을 수 있는 기능
protocol Receiveabele {
    func received(data: Any, from: Sendable2)
}

// 무언가를 발신할 수 있는 기능
protocol Sendable2 {
    var from: Sendable2 { get }
    var to: Receiveabele { get }
    
    func send(data: Any)
    
    static func isSendableInstance(_ instance: Any) -> Bool
}


// 수신, 발신이 가능한 Message Class
class MessageTwo: Receiveabele, Sendable2 {
    var from: Sendable2 
 
    var to: Receiveabele?
    
    func send(data: Any) {
        guard let receiver: Receiveabele = to else {
            print("Message has no receiver")
            return
        }
        
        receiver.received(data: data, from: from)
    }
    
    func received(data: Any, from: Sendable2) {
        print("Message received \(data) from \(from)")
    }
    
    class func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableInstance: Sendable2 = instance as? Sendable2 {
            return sendableInstance.to != nil
        }
        
        return false
    }
    
}



//: [Next](@next)
