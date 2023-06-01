import Foundation

let NM = readLine()!.split(separator: " ").compactMap { Int($0) }
var arr = readLine()!.split(separator: " ").compactMap { Int($0) }

for i in 1..<NM[0] {
    arr[i] = arr[i] + arr[i - 1]
}

for _ in 1...NM[1] {
    let input = readLine()!.split(separator: " ").compactMap { Int($0)! - 1 }
    
    let start = input[0]
    let end = input[1]
    
    print(start == 0 ? arr[end] : arr[end] - arr[start-1])
}