import Foundation

var N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var M = Int(readLine()!)!
var input2 = readLine()!.split(separator: " ").map{Int(String($0))!}

var dict: [Int: Int] = [:]


for i in input {
    if dict[i] == nil {
        dict[i] = 1
    } else {
        dict[i]! += 1
    }
}

for i in input2 {
    print(dict[i] ?? 0, terminator: " ")
}