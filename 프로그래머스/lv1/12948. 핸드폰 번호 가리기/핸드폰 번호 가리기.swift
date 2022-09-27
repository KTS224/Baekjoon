func solution(_ phoneNumber: String) -> String {
    var answer: String = phoneNumber
    
    //phoneNumber의 길이-4만큼 answer을 제거 후
    answer.removeFirst(phoneNumber.count - 4)
    
    //길이가 4인 경우는 제외
    guard phoneNumber.count == 4 else {
        //answer에 *을 제거한만큼 이어붙힌다. 
        for _ in 1 ... phoneNumber.count - 4 {
            answer = "*" + answer
        }
        
        return answer
    }
    
// if 문 풀이
    // if phoneNumber.count == 4 {
    //     return answer
    // } else {
    //     for _ in 1 ... phoneNumber.count - 4 {
    //         answer = "*" + answer
    //     }
    // }
    return answer
}
