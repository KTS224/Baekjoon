import Foundation

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var sum = input.reduce(0, +)
var answer = 0

for i in 0..<N-1 {
    sum -= input[i]
    answer += input[i]*sum
}

print(answer)