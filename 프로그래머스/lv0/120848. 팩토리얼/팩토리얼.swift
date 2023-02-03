import Foundation

func solution(_ n:Int) -> Int {
    var temp = 1
    var count = 1
    
    while true {
        temp *= count
        
        if temp > n {
            return count - 1
        }
        
        count += 1
    }
}