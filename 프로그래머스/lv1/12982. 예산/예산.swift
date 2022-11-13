import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget
    var count = 0
    
    for i in d.sorted() {
        if budget - i >= 0 {
            budget -= i
            count += 1
        }
    }
    
    return count
}