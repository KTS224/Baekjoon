import Foundation

func solution(_ nums:[Int]) -> Int {
    var arr: [Int] = []
    var answer: Int = 0
    
    for i in 0..<nums.count-2 {
        for j in 1+i..<nums.count-1 {
            for k in 1+j..<nums.count {
                arr.append(nums[i]+nums[j]+nums[k])
            }
        }
    }

    for arrNum in arr {
        var count = 0
        
        for i in 1...arrNum {
            if arrNum % i == 0 {
                count += 1
            }
        }
        
        if count == 2 {
            answer += 1
        }
    }

    return answer
}