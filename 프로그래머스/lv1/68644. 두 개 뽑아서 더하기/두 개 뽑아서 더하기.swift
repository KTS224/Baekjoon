import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var numbers = numbers
    var setNumbers: Set<Int> = []

    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            setNumbers.insert(numbers[i] + numbers[j])
        }
    }
    
    numbers = setNumbers.sorted()
    return numbers
}