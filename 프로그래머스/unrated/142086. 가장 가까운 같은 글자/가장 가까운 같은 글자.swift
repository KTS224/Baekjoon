import Foundation

func solution(_ s:String) -> [Int] {
    let arr = Array(s)
    var answer: [Int] = []
    
    for i in 0..<arr.count {
        let temp = answer.count
        for k in stride(from: i-1, through: 0, by: -1) {
            if arr[i] == arr[k] {
                answer.append(i-k)
                break
            }
        }
        
        if temp == answer.count {
            answer.append(-1)
        }
    }
    
    return answer
}