import Foundation

let NL = readLine()!.split(separator: " ")
let arr = readLine()!.split(separator: " ").compactMap{ Int($0) }.sorted()
var length: Int = Int(NL.last!)!

for i in 0..<Int(NL.first!)! {
    if length >= arr[i] {
        length += 1
    } else {
        break
    }
}

print(length)