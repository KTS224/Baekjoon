import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var 명예의전당: [Int] = []
    var answer: [Int] = []
    
    score.forEach { num in
        if 명예의전당.count < k {
            명예의전당.append(num)
        } else if 명예의전당.count >= k {
            if 명예의전당.last! < num {
                명예의전당.removeLast()
                명예의전당.append(num)
            }
        }
        명예의전당.sort(by: >)
        answer.append(명예의전당.last!)
    }
    
    return answer
}