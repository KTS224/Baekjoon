import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var n = brown + yellow
    var number: Int = 0
    
    for i in stride(from: round(sqrt(Double(n))), through: 1, by: -1) {
        if (Double(n)/i).truncatingRemainder(dividingBy: 1) == 0 {
            number = Int(i)
            if ((n/number)-2) * (number-2) == yellow {
                break
            }
        }
    }
    
    return [n/number, number]
}