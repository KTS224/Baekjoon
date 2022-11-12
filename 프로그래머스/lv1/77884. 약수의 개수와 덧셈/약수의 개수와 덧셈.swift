import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var answer = 0
    
    for num in stride(from: left, to: right + 1, by: 1) {
        var count = 0
        
        for i in 1...num {
            if num % i == 0 {
                count += 1
            }
        }
        
        answer += count % 2 == 1 ? -num : num
    }
    
    return answer
}