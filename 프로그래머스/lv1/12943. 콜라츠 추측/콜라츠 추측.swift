func solution(_ num:Int) -> Int {
    var num: Int = num
    var count: Int = 0
    
    while num != 1 {
        num = (num%2 == 0) ? num/2 : num*3+1
        count += 1
        
        if count > 500 {
            return -1
        }
    }

    return count
}