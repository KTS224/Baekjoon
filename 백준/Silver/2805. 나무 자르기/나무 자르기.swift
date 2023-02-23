import Foundation

// MARK: - 2805번 나무 자르기
let line1 = readLine()!.split(separator: " ").map{Int(String($0))!}
var line2 = readLine()!.split(separator: " ").map{Int(String($0))!}
var 큰값 = line2.max()!
var 작은값 = 0
var 중간값 = 큰값 / 2
var temp = line2.max()! / 2
var sum = 0

while 작은값 != 중간값 {
    for tree in line2 {
        if tree >= 중간값 {
            sum += tree - 중간값
        }
    }

    if sum > line1[1] {
        작은값 = 중간값
    } else if sum < line1[1] {
        큰값 = 중간값
    } else {
        break
    }
    
    sum = 0
    중간값 = 작은값 + (큰값 - 작은값)/2
}

print(중간값)