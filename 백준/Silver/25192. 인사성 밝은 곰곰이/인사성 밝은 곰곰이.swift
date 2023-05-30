import Foundation

let n = Int(readLine()!)!
var arr: [String] = []
var count = 0

for _ in 1...n {
    let input = readLine()!
    
    if input != "ENTER" {
        arr.append(input)
    } else {
        count += Set(arr).count
        arr.removeAll()
    }
}

if !arr.isEmpty {
    count += Set(arr).count
}

print(count)