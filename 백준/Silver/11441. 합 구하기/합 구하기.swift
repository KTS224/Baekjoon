import Foundation

let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").compactMap { Int($0) }
let M = Int(readLine()!)!

for i in 1..<N {
    arr[i] = arr[i] + arr[i - 1]
}

for _ in 1...M {
    let input = readLine()!.split(separator: " ").compactMap { Int($0)! - 1 }
    let start = input[0]
    let end = input[1]
    
    print(start == 0 ? arr[end] : arr[end] - arr[start-1])
}