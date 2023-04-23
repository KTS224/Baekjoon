import Foundation

let N = Int(readLine()!)!
var arr1 = readLine()!.split(separator: " ").map { Int(String($0))! }
var arr2 = readLine()!.split(separator: " ").map { Int(String($0))! }
var sum = 0

arr1.sort(by: >)
arr2.sort(by: <)

for i in 0..<N {
    sum += arr1[i] * arr2[i]
}

print(sum)
