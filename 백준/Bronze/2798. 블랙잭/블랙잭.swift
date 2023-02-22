import Foundation

// MARK: - 2789번 블랙잭
var line1 = readLine()!.split(separator: " ").map{Int(String($0))!}
var line2 = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr: [Int] = []

for i in 0..<line1[0]-2 {
    for j in i+1..<line1[0]-1 {
        for k in j+1..<line1[0] {
            var sum = line2[i]+line2[j]+line2[k]
            
            if sum <= line1[1] {
                arr.append(sum)
            }
        }
    }
}

arr.sort(by: >)
print(arr[0])