import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sum: Int = 45
    
    for index in 0 ..< numbers.count {
        sum -= numbers[index]
    }
    
    return sum
}