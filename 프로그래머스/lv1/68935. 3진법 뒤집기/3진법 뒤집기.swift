import Foundation

func solution(_ n:Int) -> Int {
    var n: Int = n
    var arr: [Int] = []
    var answer: Double = 0

    while n >= 3 {
        arr.append(n%3)
        n /= 3
    }
    arr.append(n%3)

    for i in 1...arr.count {
        answer += Double(arr[i-1]) * Double(pow(3.0, Double(arr.count - i)))
    }
    
    return Int(answer)
}