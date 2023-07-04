import Foundation

var n = Int(readLine()!)!
var arr: [String] = []

for _ in 0..<n {
    arr.append(readLine()!)
}

var inc = arr.sorted()
var dec = arr.sorted(by: >)

if arr == inc {
    print("INCREASING")
} else if arr == dec {
    print("DECREASING")
} else {
    print("NEITHER")
}