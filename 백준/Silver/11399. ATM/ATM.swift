import Foundation

var num = Int(readLine()!)!
var n = num
let input = readLine()!.split(separator: " ").compactMap { Int($0) }
var arr = input.sorted()
var answer = 0

for i in 0..<num {
    answer += arr[i] * n
    n -= 1
}

print(answer)