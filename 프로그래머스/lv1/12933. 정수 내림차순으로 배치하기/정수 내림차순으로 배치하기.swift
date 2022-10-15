func solution(_ n:Int64) -> Int64 {
    var str = String(n)
    var arr = str.sorted(by: >)
    var answer = Int64(String(arr)) ?? 0
    return answer
}