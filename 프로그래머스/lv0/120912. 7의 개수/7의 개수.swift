import Foundation

func solution(_ array:[Int]) -> Int {
    var answer = 0
    
    for i in array {
        for k in String(i) {
            if k == "7" {
                answer += 1
            }
        }
    }
    
    return answer
}