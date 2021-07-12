//: [Previous](@previous)

import Foundation

/*:
 # 문제 7 (10점)
 
 Swift가 제공하는 컬랙션의 종류와 특징을 설명해 주세요.
 
 ## 보너스 점수
 1. Swift가 제공하는 컬렉션이 메모리를 효율적으로 사용하는 이유를 설명해 주세요. (+5점)
 
 2. 아래 두 메소드 호출의 차이를 설명해 주세요. (+5점)
````
 arr.removeAll(keepingCapacity: false)
 arr.removeAll(keepingCapacity: true)
 ````
 */
// 보너스 점수
// 1. 스위프트는 아무떄나 값을 복사하는게 아니라 기본적으로 copy-on-write에 기반을 두기 때문에 꼭 필요한 경우에만 값을 복사합니다. 즉 값이 변경 되지않는다면 항상 동일한 데이터를 사용합니다. 그래서 오버헤드없이 대부분 빠른 성능을 제공할수가있다.
// 2. arr.removeAll(keepingCapacity: false) 이 메소드는 false라면 메모리 저장공간유지 하지 않고 요소를 삭제한다 하지만 arr.removeAll(keepingCapacity: true)
// 이경우라면 메모리 공간을 유지한채 요소만 삭제합니다


//: [Next](@next)
