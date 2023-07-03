import Foundation

var dict: [String: Int] = [:]
var n = Int(readLine()!)!

for _ in 1...n {
    let str = readLine()!
    let arr = Array(str)
    var name = ""

    for i in 0..<arr.count {
        if arr[i] == "." {
            name += arr[i+1..<arr.count]
        }
    }

    if dict[name] != nil {
        dict[name]! += 1
    } else {
        dict[name] = 1
    }
}

for (k, v) in dict.sorted(by: { $0.0 < $1.0 }) {
    print(k, v)
}