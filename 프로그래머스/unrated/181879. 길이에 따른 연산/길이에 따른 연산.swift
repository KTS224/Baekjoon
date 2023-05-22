import Foundation

func solution(_ num_list:[Int]) -> Int {
    var answer = 0
    
    if num_list.count < 11 {
        answer = 1
        
        for item in num_list {
            answer *= item
        }
    } else {
        answer = 0
        
        for item in num_list {
            answer += item
        }
    }
    
    
    return answer
}