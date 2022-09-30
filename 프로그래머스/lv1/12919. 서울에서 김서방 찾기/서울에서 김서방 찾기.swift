func solution(_ seoul:[String]) -> String {
    var index: Int = 0
    var location: Int = 0
    
    while index < seoul.count {
        if seoul[index] == "Kim" {
            location = index
            break
        }
        index += 1
    }
    
    return "김서방은 \(location)에 있다"
}