import Foundation

var input = readLine()!.split(separator: " ").map{Int(String($0))!}

var n = 1
var m = 1
var l = 1

for i in 0..<input.first! {
    n *= i + 1
}

for i in 0..<input.last! {
    m *= i + 1
}

for i in 0..<(input.first!-input.last!) {
    l *= i + 1
}

print(n / (m * l))