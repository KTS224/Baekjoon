func solution(_ arr:[Int]) -> Double {
    var sum: Int = 0
    let average: Double
    
    for index in 0 ..< arr.count {
        sum += arr[index]
    }
    
    average = Double(sum) / Double(arr.count)
    
    return average
}