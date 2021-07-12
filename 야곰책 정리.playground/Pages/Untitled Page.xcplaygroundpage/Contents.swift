import UIKit

let name: String = "sintaek"

var introduce: String = String()

introduce.append("제이름은")

introduce


introduce = introduce + "sintaek hwang" + "입니다."

introduce

let hello = "hello"

let myName = "sintaek"

var greeting = hello + myName + " " + "!!!"


greeting = hello
greeting += " "
greeting += myName
greeting += "!!"

print(greeting)



var isSameString = false

isSameString = hello == "Hello"


isSameString = myName == "sintaek"

isSameString = myName == hello


var hasprefix = hello.hasPrefix("he")

hasprefix = hello.hasPrefix("HE")

hasprefix = myName.hasPrefix("sin")

hasprefix = myName.hasSuffix("taek")

let dosomething = "gknsd;flkgns;ldfn\tg;dfmg';df"
print(dosomething)


typealias makeSomeTuple = (name: String, age: Int, height: Double)


let myInfo: makeSomeTuple = ("sintaek", 28, 175.0)

myInfo.age
myInfo.name
myInfo.height



var array: [String] = ["love", "sex", "onenight", "wine", "hotel"]

array.count
array.append("dogy")
array.remove(at: 2)

array[0 ... 2] = []




var dict: [String: Any] = ["1": 1, "2": 2, "3": 3]


dict.count
dict.isEmpty

dict["Max"] = 999
dict["present"] = 200

dict.removeValue(forKey: "1")

var doSet: Set<String> = ["A", "B", "C", "D", "E", "A"]
doSet.count

doSet.remove("A")

array.randomElement()
array.shuffle()


doSet.randomElement()
doSet.shuffled()
dict.shuffled()









//let myfood = Maindish.chicken(withSauce: false)
//
//switch myfood{
//case .chicken(withSauce: false):
//    print("chicken")
//case .pasta(taste: "cream"):
//print("cream")
//case .pizza(dough: "sweetpotato", topping: "ham"):
//print("my pizzza")
//case .rice:
//print("오뚜기")
//default:
//    break
//
//}





let todayPasta: Maindish = Maindish.pasta(taste: MytypePasta.tomato)
let todayPizza: Maindish = Maindish.pizza(dough: MypizzadoughType.thin, topping: MypizzaTypeToping.seafood)


enum School: String, CaseIterable {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    @available(iOS, obsoleted: 12.0)
    case graduate = "대학원"
    
    static var allCases: [School] {
        let all: [School] = [ .primary,
                              .elementary,
                              .middle,
                              .high,
                              .college,
                              .university
                        ]
        
        #if os(iOs)
        return all
        #else
        return all + []
        #endif
        
    }
    
}





enum MytypePasta: CaseIterable {
    case tomato, cream
}

enum MypizzaTypeToping: CaseIterable {
    case chees, sweetpotato, seafood
}

enum MypizzadoughType: CaseIterable {
    case thin, thick, galic
}



enum Maindish: CaseIterable {
    case pasta(taste: MytypePasta)
    case pizza(dough: MypizzadoughType, topping: MypizzaTypeToping)
    case chicken(withSauce: Bool)
    case rice
    
    static var allCases: [Maindish] {
        return MytypePasta.allCases.map(Maindish.pasta)
            + MypizzadoughType.allCases.reduce([], { result, dough in
                result + MypizzaTypeToping.allCases.map({ topping in
                    Maindish.pizza(dough: dough, topping: topping)
                })
            })
        
            + [true, false].map(Maindish.chicken)
            + [Maindish.rice]
         
    }
}

print(Maindish.allCases.count)
print(Maindish.allCases)


enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplcation(ArithmeticExpression, ArithmeticExpression)
    
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let final = ArithmeticExpression.multiplcation(sum, ArithmeticExpression.number(2))


func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case .number(let value):
        return value
    case .addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .multiplcation(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

let result: Int = evaluate(final)
print("(5 + 4) * 2 = \(result)")


var stringA = ""
var stringB = "string"

stringA.isEmpty ? "값이없음" : "값이있음"






