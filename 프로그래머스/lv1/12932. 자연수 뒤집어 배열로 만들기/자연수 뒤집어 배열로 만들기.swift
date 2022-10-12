func solution(_ n:Int64) -> [Int] {
    var s: String = String(n)
    var answer: [Int] = []
    
    for _ in s {
        answer.append(Int(String(s.removeLast())) ?? 0)
    }
    
    return answer
}