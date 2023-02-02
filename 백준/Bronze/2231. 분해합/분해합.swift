import Foundation

var input1 = Int(readLine()!)!
var answer = 0

for i in 1...input1 {
    var sum: Int = i
    
    for k in String(i) {
        sum += Int(String(k))!
    }
    
    if sum == input1 {
        answer = i
        break
    }
}

print(answer)