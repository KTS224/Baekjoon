import Foundation

func solution(_ polynomial:String) -> String {
    var arr = polynomial.components(separatedBy: " + ")
    var x = 0
    var c = 0
    var answer = ""
    
    for i in arr {
        if i.last == "x" {
            var num = i
            num.removeLast()
            x += Int(num) ?? 1
        } else {
            c += Int(i)!
        }
    }
    
    if x != 0 {
        answer += String(x) + "x"
    }
    
    if x != 0 && c != 0 {
        answer += " + "
    }
    
    if c != 0 {
        answer += String(c)
    }
    
    if x == 1 {
        answer.removeFirst()
    }
    
    return answer
}