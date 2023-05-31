import Foundation

var input = readLine()!.split(separator: " ").compactMap{ Int($0) }
var arr: [Int] = []
var count = 0
var leftMoney = input.last!

for _ in 1...input.first! {
    arr.append(Int(readLine()!)!)
}

while leftMoney > 0 {
    if arr.last! > leftMoney {
        arr.popLast()
        continue
    } else {
        leftMoney -= arr.last!
        count += 1
    }
}

print(count)