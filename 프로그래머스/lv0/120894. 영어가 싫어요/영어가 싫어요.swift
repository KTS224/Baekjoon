import Foundation

func solution(_ numbers:String) -> Int64 {
    var numbers = numbers
    var arr = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    for i in 0..<arr.count {
        numbers = numbers.replacingOccurrences(of: arr[i], with: "\(i)")
    }
    
    return Int64(numbers)!
}