func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var answer: [Int] = []
    
    for index in 0..<arr.count {
        if arr[index]%divisor == 0 {
            answer.append(arr[index])
        }
    }
    
    if answer.isEmpty {
        return [-1]
    }
    
    return answer.sorted()
}