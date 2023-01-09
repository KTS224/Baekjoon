func solution(_ n:Int) -> Int {
    var arr = [1, 1]
    
    for _ in 1...n {
        var temp = arr[0]
        arr[0] = arr[1] % 1234567
        arr[1] = temp + arr[0] % 1234567
    }
    
    return arr[0]
}