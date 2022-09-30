func solution(_ n:Int) -> String {
    var answer: String = ""
    
    for index in 1...n {
        answer += (index%2 == 1) ? "수" : "박"
    }
    
    return answer 
}