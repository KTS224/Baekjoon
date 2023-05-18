import Foundation

let N = Int(readLine()!)!
var dict: [String: Int] = [:]

for _ in 1...N {
    let book = readLine()!
    
    if dict[book] == nil {
        dict[book] = 1
    } else {
        dict[book]! += 1
    }
}

var sortedDictByValue = dict.sorted{$0.value < $1.value}
var valueArr = sortedDictByValue.map{$0.1}
var keyArr = sortedDictByValue.map{$0.0}
let firstNum = valueArr.popLast()
var arr: [String] = []
arr.append(keyArr.popLast()!)

for i in stride(from: valueArr.count-1, through: 0, by: -1) {
    guard firstNum == valueArr[i] else { break }
    arr.append(keyArr.popLast()!)
}

print(arr.sorted().first!)