import Foundation

func solution(_ num_list:[Int]) -> Int {
    var evenSum = 0
    var oddSum = 0
    
    for i in 0..<num_list.count {
        if i % 2 == 0 {
            evenSum += num_list[i]
        } else {
            oddSum += num_list[i]
        }
    }
    
    return max(evenSum, oddSum)
}