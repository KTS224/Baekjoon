import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var a = a
    var b = b
    var i = 2
    
    while i <= a {
        if (a % i == 0) && (b % i == 0) {
            a /= i
            b /= i
            i = 2
        } else {
            i += 1
        }
    }
    
    while true {
        var temp = b
        
        if b % 2 == 0 {
            b /= 2
        }
        
        if b % 5 == 0 {
            b /= 5
        }
        
        if temp == b {
            break
        }
    }
    return b == 1 ? 1 : 2
}