import Foundation

func solution(_ n: Int) -> Int {
    var answer: Int = 0
    var s: String = String(n)
    
    for _ in s {
        answer += Int(String(s.removeFirst()))!
    }
    
    return answer
}