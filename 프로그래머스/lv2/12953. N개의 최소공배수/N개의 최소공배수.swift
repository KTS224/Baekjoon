func solution(_ arr:[Int]) -> Int { 
    var temp = 최대공약수(arr[0], arr[1])

    for i in 2..<arr.count {
        temp = 최대공약수(temp, arr[i])
    }
    
    return temp
}

func 최대공약수(_ a: Int, _ b: Int) -> Int {
    var 큰수 = max(a, b)
    var 작은수 = min(a, b)
    var 최소공배수 = 1
    
    while true {
        var 나머지 = 큰수 % 작은수
        if 나머지 == 0 {
            최소공배수 = 작은수
            break
        } else {
            큰수 = 작은수
            작은수 = 나머지
        }
    }
    
    return a * b / 최소공배수
}