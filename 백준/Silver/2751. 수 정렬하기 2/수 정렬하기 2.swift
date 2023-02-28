import Foundation

let N = Int(readLine()!)!
var arr: [Int] = []

for _ in 1...N {
    let line = Int(readLine()!)!
    arr.append(line)
}

arr.sort()

print(arr.map{String($0)}.joined(separator: "\n"))