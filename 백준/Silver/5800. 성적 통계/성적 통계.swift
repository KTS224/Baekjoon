import Foundation

let k = Int(readLine()!)!

for count in 1...k {
    var input = readLine()!.split(separator: " ").compactMap{ Int($0) }
    let n = input.removeFirst()
    let score: [Int] = input.sorted()
    var largestGap = 0
    
    for i in 0..<n-1 {
        let gap = score[i+1] - score[i]
        
        if gap >= largestGap {
            largestGap = gap
        }
    }
    
    print("Class", count)
    print("Max \(score.max()!), Min \(score.min()!), Largest gap \(largestGap)")
}