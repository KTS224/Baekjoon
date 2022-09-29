import Foundation

func solution(_ s:String) -> Bool {
    var s: String = s.uppercased()
    var pCounter: Int = 0
    var yCounter: Int = 0
    
    for index in 0 ..< s.count {
        if s.first == "P" {
            pCounter += 1
        } else if s.first == "Y" {
            yCounter += 1
        }
        s.removeFirst()
    }
    
    if pCounter == yCounter {
        return true
    } else {
        return false
    }
}
