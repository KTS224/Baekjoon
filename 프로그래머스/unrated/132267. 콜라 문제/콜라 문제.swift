import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var n = n
    var answer = 0
    
    while n >= a {
        var ntemp = n
        var t = n / a
        answer += t
        n = t * b
        n += ntemp % a        
    }
    
    return answer * b
}