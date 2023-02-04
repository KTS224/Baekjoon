import Foundation

func solution(_ n:Int) -> [Int] {
    var n = n
    var set : Set<Int> = []
    var i = 2
    
    while i <= n {
        if n % i == 0 {
            n /= i
            set.insert(i)
            i = 1
        }
        
        i += 1
    }
    
    return Array(set).sorted()
}
