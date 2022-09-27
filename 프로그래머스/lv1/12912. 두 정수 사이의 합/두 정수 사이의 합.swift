func solution(_ a:Int, _ b:Int) -> Int {
    var sum: Int = 0
    
    if b > a {
        for index in a ... b {
        sum += index
        } 
    } else {
        for index in b ... a {
        sum += index
        }
    }
    
    return sum
}