import Foundation

let line1 = readLine()!.split(separator: " ").map{Int(String($0))!}
var 랜선주머니: [Int] = []

for _ in 1...line1[0] {
    랜선주머니.append(Int(readLine()!)!)
}

var 큰값 = 랜선주머니.max()!
var 작은값 = 1
var 중간값 = (큰값 + 작은값) / 2
var answer = 0

while 작은값 <= 큰값 {
    var sum = 0
    
    for 랜선 in 랜선주머니 {
        sum += 랜선 / 중간값
    }
    
    if sum < line1[1] {
        큰값 = 중간값 - 1
    } else {
        작은값 = 중간값 + 1
        answer = 중간값
    }
    중간값 = (큰값 + 작은값) / 2
}

print(answer)