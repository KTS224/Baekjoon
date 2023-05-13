import Foundation

var score = 0
var temp = 0
var i = 0

for _ in 1...10 {
    let input = Int(readLine()!)!
    
    if temp + input <= 100 && i != 1 {
        temp += input
    } else if i == 0 {
        score = temp + input
        i = 1
    }
}

let a = abs(score - 100)
let b = abs(temp - 100)

print(a <= b ? score : temp)