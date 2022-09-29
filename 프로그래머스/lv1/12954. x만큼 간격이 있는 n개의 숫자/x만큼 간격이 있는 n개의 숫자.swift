func solution(_ x:Int, _ n:Int) -> [Int] {
    var answer = Array(repeating: 0, count: n)
    
    for index in 1...n {
        answer[index-1] = x*index
    }
    
    return answer 
}