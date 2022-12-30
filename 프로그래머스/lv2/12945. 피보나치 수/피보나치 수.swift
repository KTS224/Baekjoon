func solution(_ n:Int) -> Int {
    var arr = [1, 1]
    
    if n == 2 {
        return 1
    }
    
    for _ in 3...n {
        var afterArr = [0, 0]

        afterArr[0] = arr[1] % 1234567
        afterArr[1] = (arr[0] + arr[1]) % 1234567
        
        arr = afterArr
    }
    
    return arr[1]
}