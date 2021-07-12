//: [Previous](@previous)

import Foundation

let first = 5
let second = 5
var biggerValue = 0


if (first > second) {
    biggerValue = first
} else if first == second {
    biggerValue = first
} else if first < second {
    biggerValue = second
} else if first == 5 {
    biggerValue = 100
}


let intergerValue = 5
switch intergerValue {
case 0:
    print("value == zero")
case 1 ... 10:
    print("value == 1~10")
case Int.min..<0, 101..<Int.max:
    print("Value > 0 or Value < 100")
default:
    print("10 < Value <= 100")
}

let doubleValue: Double = 3.0

switch doubleValue {
case 0:
    print("value == zero")
case 1.5 ... 10.5:
    print("1.5 <= value <= 10.5")
default:
    print("value == \(doubleValue)")
}



let stringValue = "sintaekhwang"

switch stringValue {
case "sintaekhwang":
    print("middle name")
case "hwang":
    print("my lastname")
case "minsu", "sangmin", "suwon":
    print("my fullname")
default:
    print("it's not my name")
}


typealias PersonInfo = (name: String, age: Int)

let tupleValue: PersonInfo = ("sintaek", 28)

switch tupleValue {
case ("sintaek", _):
    print("이름은 맞았고 나이는 \(tupleValue.age)입니다." )
case ("sintaek", 28):
    print("정답입니다.")
default:
    print("no data")
}


let 직급: String = "사원"
let 연차: Int = 1
let 인턴여부: Bool = false

switch 직급 {
case "사원" where 인턴여부 == true:
    print("인턴입니다.")
case "사원" where 연차 < 2 && 인턴여부 == false:
    print("신입사원입니다.")
case "사원" where 연차 > 5:
    print("연식 좀 된 사원입니다.")
default:
    print("사장입니까?")
}




enum School {
    case primary, elementary, middle, high, colleage, university, graduate
}


let 최종학력: School = School.university

switch 최종학력 {
case .primary:
    print("최종학력은 유치원입니다.")
case .elementary:
    print("최종학력은 초등학교입니다.")
case .middle:
    print("최종학력은 중학교입니다.")
default:
    break
}


var result: Int = 1

for _ in 1 ... 3 {
    result *= 10
}

print(result)


// Dictionary
let friends: [String: Int] = ["jay": 35, "joe": 29, "jenny": 31]

for tuple in friends {
    print(tuple)
}


let 주소: [String: String] = ["도": "충청북도", "시군구": "청주시", "동읍면": "율량동"]

for (키, 값) in 주소 {
    print("\(키): \(값)")
}
// 딕셔너리의 넘겨받는 타입이 튜플로 저장되어 넘어온다.

//Set
let 지역번호: Set<String> = ["02", "031", "032", "041", "051", "054"]

for 번호 in 지역번호 {
    print(번호)
}

var names: [String] = ["Joker", "Jenny", "Nova", "sintaek"]

while names.isEmpty == false {
    print("Good bye \(names.removeFirst())")
    
}


var numbers: [Int] = [3, 2342, 6, 3252]

numbersloop: for num in numbers {
    if num > 5 || num < 1 {
        continue numbersloop
    }
    
    
    var count: Int = 0

    printloop: while true {
        
        print(num)
        count += 1
        
        if count == num {
            break printloop
        }
    }
    
    
    removeloop: while true {
        if numbers.first != num {
            break numbersloop
        }
        
        numbers.removeFirst()
    }
    
    
}




//: [Next](@next)
