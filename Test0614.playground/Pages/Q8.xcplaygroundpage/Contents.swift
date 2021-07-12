//: [Previous](@previous)

import Foundation

/*:
 # 문제 8 (5점)
 
 날짜를 아래와 같은 포멧으로 출력하는 메소드를 Date 형식에 추가해 주세요.
 
 ````
 2021년 6월 14일 월요일
 ````
 
 ## 보너스 점수
 
 1. 자신이 태어난 날부터 살아온 일수를 출력하는 메소드를 구현해 주세요. (+5점)
 ````
 123456일
 ````
 
 2. "보너스 점수 1번 메소드"에서 숫자 사이에 구분자를 추가해서 출력합니다. (+5점)
 ````
 123,456일
 ````
 */
extension Date {
    func format() {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.locale = Locale(identifier: "ko_kr")
        
        formatter.string(from: self)
    }
    
    
    func birthCount(year: Int, month: Int, day: Int) -> String?  {
        let calendar = Calendar.current
        var datecompos = DateComponents()
        datecompos.year = year
        datecompos.month = month
        datecompos.day = day
        
        guard let date = calendar.date(from: datecompos) else { return nil}
        
        guard let countDate = calendar.dateComponents([.day], from: date, to: self).day else { return nil}
       
        
        let numFormat = NumberFormatter()
        numFormat.numberStyle = .decimal
        
        let totalday = countDate as NSNumber
        if let deciamlDay = numFormat.string(from: totalday) {
            return "\(deciamlDay)일"
        }
       
        return nil
    
    }
}

Date().format()

Date().birthCount(year: 1993, month: 07, day: 25)

//: [Next](@next)
