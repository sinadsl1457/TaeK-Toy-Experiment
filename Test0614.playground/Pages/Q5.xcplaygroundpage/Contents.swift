//: [Previous](@previous)

import Foundation

/*:
 # 문제 5 (10점)
 
 아래의 조건을 만족시키는 함수를 구현해 주세요.
 
 1. 함수는 하나 이상의 숫자를 파라미터로 받거나 받지 않습니다.
 
 2. 함수는 파라미터로 전달된 수 중에서 짝수의 합만 구한 다음 리턴합니다.
 
 3. 파라미터로 전달된 수가 없거나, 파라미터로 전달된 수에 짝수가 포함되어 있지 않다면 nil을 리턴합니다.
 
 4. 함수가 값을 리턴한다면 콘솔에 아래와 같이 출력합니다.
 
 ````
 ex) 결과가 7인 경우
 결과 : 7
 ````
 
 */
func onlyAddEvenNum(num: Int...) -> Int? {
   let range = num.contains { n in
        n.isMultiple(of: 2)
    }
    
    guard !num.isEmpty && range else {
        return nil
    }
    var value = 0
    
    for even in num {
        if !even.isMultiple(of: 2) {
            continue
        }
            value += even
    }
    
    return value
}


onlyAddEvenNum(num: 1, 3, 5, 7)



//: [Next](@next)
