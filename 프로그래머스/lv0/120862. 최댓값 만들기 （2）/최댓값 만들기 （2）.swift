import Foundation

func solution(_ numbers:[Int]) -> Int {
    let numbers = numbers.sorted(by: >)
    let answer1 = numbers[0] * numbers[1]
    let answer2 = numbers.last! * numbers[numbers.count-2]
    return max(answer1, answer2)
}