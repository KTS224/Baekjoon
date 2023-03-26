import Foundation

var input = readLine()!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var answerArr = Array(repeating: 0, count: Int(input)!)
var sum = arr.reduce(0, +)
var i = 0
var k = 1
var count = arr.count

while sum >= k {
    if i >= count {
        i -= count
    }
    
    if arr[i] == 0 {
        i += 1
        continue
    }
    
    if arr[i] != 0 {
        arr[i] -= 1
        answerArr[i] = k
    }
    
    i += 1
    k += 1
}

print(answerArr.map { String($0) }.joined(separator: " "))