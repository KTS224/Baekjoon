func solution(_ s:String) -> String {
    let stringLength: Int = s.count
    var answer: String = s
    
    if stringLength == 1 || stringLength == 2 { //길이가 1 또는 2일경우
        return answer
    } else if stringLength%2 == 1 { //홀수일경우
        for _ in 1...Int(stringLength/2) {
            answer.removeFirst()
            answer.removeLast()
        }
    } else { // 짝수일경우
        for _ in 1...(stringLength/2)-1 {
            answer.removeFirst()
            answer.removeLast()
        }
    }
    
    return answer
}