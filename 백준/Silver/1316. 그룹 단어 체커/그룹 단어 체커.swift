import Foundation

var N = Int(readLine()!)!
var count = N

for _ in 0..<N {
    let str = readLine()!
    var arr = Array(str)
    var temp = ""

loop: for _ in str {
        temp = String(arr.popLast()!)
        for i in stride(from: arr.count-1, through: 0, by: -1) {
            if temp != String(arr[i]) && arr[0...i].contains(Character(temp)) {
                count -= 1
                break loop
            }
        }
    }
}

print(count)