import Foundation

let n = Int(readLine()!)!
var dict: [Int: Int] = [:]

for _ in 1...n {
    let input = Int(readLine()!)!
    if dict[input] == nil {
        dict[input] = 1
    } else {
        dict[input]! += 1
    }
}

var sortByCount = dict.sorted { $0.1 > $1.1 }
var largestCount = sortByCount.first!.value
var duplicateNumbers = sortByCount.filter { $0.value == largestCount }
var sortByNum = duplicateNumbers.sorted { $0.0 < $1.0 }

print(sortByNum.first!.key)