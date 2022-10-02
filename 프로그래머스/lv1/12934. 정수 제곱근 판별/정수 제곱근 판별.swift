import Foundation

func solution(_ n: Int64) -> Double {
    var n: Double = Double(n)
    
    if sqrt(n).truncatingRemainder(dividingBy: 1) == 0 {
        return pow(sqrt(n) + 1, 2)
    }
    
    return -1
}