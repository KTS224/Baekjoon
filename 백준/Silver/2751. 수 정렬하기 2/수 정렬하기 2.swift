import Foundation

var N = Int(readLine()!)!
var arr: [Int] = []

for _ in 1...N {
    let line = Int(readLine()!)!
    arr.append(line)
}

arr.sort()

for i in 0..<N {
    print(arr[i])
}