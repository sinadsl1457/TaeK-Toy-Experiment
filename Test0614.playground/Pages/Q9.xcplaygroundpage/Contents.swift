//: [Previous](@previous)

import Foundation

/*:
 # 문제 9 (10점)
 
 다음 조건을 만족시키는 형식을 만들어 주세요.
 
 1. 이름과 태어난 해, 성별, 주소, 전화번호를 저장할 수 있습니다.
 
 2. 주소와 전화번호는 필요에 따라 저장하지 않을수도 있습니다.
 
 3. 이름, 생년(태어난 해), 성별 또는 이름, 생년, 성별, 주소, 전화번호로 인스턴스를 만들 수 있습니다.
 
 4. 이름이 두 글자 미만이거나, 생년이 1900년 1월 1일 이전이거나, 남성이나 여성이 아닌 외계인의 성별이라면 인스턴스가 생성되지 않습니다.
 
 
 
 ## 보너스 점수
 
 1. 태어난 해를 기준으로 나이를 계산해서 리턴하는 멤버를 추가합니다. 만 나이는 계산하지 않습니다. (5점)
 
 2. 구조체, 열거형, 클래스를 적절히 활용합니다. (5점)
 
 */
enum Gender {
    case man
    case women
    case alian
}

struct Person {
    var name: String
    var age: Int
    var sex: Gender
    var address: String?
    var phoneNumber: Int?
    
    init?(name: String, age: Int, sex: Gender, address: String? = nil, number: Int? = nil) {
        guard name.count > 2 else {
            return nil
        }
        self.name = name
        
        guard age > 1900 else {
            return nil
        }
        
        self.age = age
   
        switch sex {
        case .man:
            self.sex = sex
        case .women:
            self.sex = sex
        case.alian:
            return nil
        }
        
   
        
    }
    
}


let p = Person(name: "name", age: 1901, sex: .alian)

//: [Next](@next)
