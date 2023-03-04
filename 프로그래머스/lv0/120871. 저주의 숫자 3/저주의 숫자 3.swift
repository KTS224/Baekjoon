import Foundation

func solution(_ n:Int) -> Int {
    var i = 1
    var answer = n
    
    while i <= answer {
        if i % 3 == 0 {
            answer += 1
        } else if String(i).contains("3") {
            answer += 1
        }
        
        i += 1
    }
    
    return answer
}