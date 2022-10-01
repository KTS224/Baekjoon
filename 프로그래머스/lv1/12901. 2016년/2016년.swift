func solution(_ a:Int, _ b:Int) -> String {
    let dayOfTheWeek: [String] = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    var answer: String = ""
    
    //일요일이 1일로 시작하는경우 인덱스 값이 0 이여야한다.
    //따라서 시작하는 날이 언제인가에 따라 구분했다.
    switch a {
    case 5: // 일시작
        answer = dayOfTheWeek[(b-1)%7]
    case 2: // 월시작
        answer = dayOfTheWeek[(b)%7] 
    case 3: // 화시작
        answer = dayOfTheWeek[(b+1)%7] 
    case 6: // 수시작
        answer = dayOfTheWeek[(b+2)%7] 
    case 9, 12: // 목시작
        answer = dayOfTheWeek[(b+3)%7] 
    case 1, 4, 7: // 금시작
        answer = dayOfTheWeek[(b+4)%7] 
    default: // 토시작
        answer = dayOfTheWeek[(b+5)%7] 
    }
    
    return answer
}