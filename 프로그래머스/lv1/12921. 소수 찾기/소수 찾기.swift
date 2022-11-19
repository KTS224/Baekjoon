func solution(_ n:Int) -> Int {
    var arr = Array<Int>(0...n)
    var count: Int = 0
    
    for i in 2...n {
        if arr[i] == 0 {
            continue
        }
        
        for j in stride(from: i*i, through: n, by: i) {
            arr[j] = 0
        }
    }
    
    for i in 2...n {
        if arr[i] != 0 {
            count += 1
        }
    }
    
    return count
}