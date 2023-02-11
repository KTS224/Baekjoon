import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    var set = Set(s1)
    var count = 0
    
    for i in s2 {
        if set.contains(i) {
            count += 1
        }
    }
    
    return count
}