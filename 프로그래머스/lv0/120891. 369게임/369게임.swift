import Foundation

func solution(_ order:Int) -> Int {
    var count = 0
    
    String(order).forEach { n in
        if n == "3" || n == "6" || n == "9" {
            count += 1
        }
    }
    
    return count
}