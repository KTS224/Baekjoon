import Foundation

var n = Int(readLine()!)!
var arr: [Int] = []
var answer: [Int] = []

for _ in 0..<n {
    let t = readLine()!.split(separator: " ").map { Int($0) }
    arr.append(t[0]!)
    arr.append(t[1]!)
}

for i in stride(from: 0, to: arr.count, by: 2) {
    var count = 1
    for k in stride(from: 0, to: arr.count, by: 2) {
        if arr[i] < arr[k] && arr[i+1] < arr[k+1] {
            count += 1
        }
    }
    answer.append(count)
}

for i in answer {
    print(i, terminator: " ")
}