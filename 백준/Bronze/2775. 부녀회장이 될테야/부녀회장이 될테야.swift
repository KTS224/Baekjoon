import Foundation

var T = Int(readLine()!)!
for _ in 1...T {
    var k = Int(readLine()!)! // 층
    var n = Int(readLine()!)! // 호
    var arr: [Int] = Array(1...n)
    
    for _ in 1..<k {
        for i in 1..<n {
            arr[i] = arr[i-1] + arr[i]
        }
    }
    
    print(arr.reduce(0, +))
}