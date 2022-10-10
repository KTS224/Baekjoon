func solution(_ s:String) -> String {
    var answer: String = ""
    var counter: Int = 0

    for i in s {
        counter = (i == " ") ? 0 : counter + 1
        answer += (counter % 2 == 1) ? i.uppercased() : i.lowercased()
    }
    
    return answer
}