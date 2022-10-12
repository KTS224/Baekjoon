import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var emergency = emergency
    var arr: [Int] = Array(repeating: 0, count: emergency.count)
    var count: Int = 1
    
    for _ in 1...emergency.count {
        arr[emergency.firstIndex(of: emergency.max()!)!] = count
        emergency[emergency.firstIndex(of: emergency.max()!)!] = 0
        count += 1
    }
    
    return arr
}