//: [Previous](@previous)

import Foundation


// 무언가를 수신받을 수 있는 기능
protocol Receiveabele {
    func received(data: Any, from: Sendable2)
}

// 무언가를 발신할 수 있는 기능
protocol Sendable2 {
    var from: Sendable2 { get }
    var to: Receiveabele? { get }
    
    func send(data: Any)
    
    static func isSendableInstance(_ instance: Any) -> Bool
}



class MessageTwo: Receiveabele, Sendable2 {
    var to: Receiveabele?
    
    var from: Sendable2 {
        return self
    }
 
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

class Mail: Sendable2, Receiveabele {
    var from: Sendable2 {
        return self
    }
    
    var to: Receiveabele?
    
    func send(data: Any) {
        guard let receiver: Receiveabele = to else {
            print("Mail has no receiver")
            return
        }
        
        receiver.received(data: data, from: from)
    }

    func received(data: Any, from: Sendable2) {
        print("Mail received \(data) from \(from)")
    }
    
    static func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableIntance: Sendable2 = instance as? Sendable2 {
            return sendableIntance.to != nil
        }
        
        return false
    }
}

let myPhoneMessage: MessageTwo = MessageTwo()
let yourPhoneMessage: MessageTwo = MessageTwo()

myPhoneMessage.send(data: "Hello") // Message has no receiver

// Messsage 인스턴스는 발신과 수신이 모두 가능하므로 메시지를 주고 받을 수 있습니다.

myPhoneMessage.to = yourPhoneMessage
myPhoneMessage.send(data: "Hello") // Message received Hello from Message


//: [Next](@next)
