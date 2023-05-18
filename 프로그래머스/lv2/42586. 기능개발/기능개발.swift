import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var progresses = progresses
    var CompleteCounts: [Int] = Array(repeating: 0, count: progresses.count)
    
    while true {
        if progresses.filter{ $0 < 100 }.isEmpty {
            break
        }
        
        for i in 0..<progresses.count {
            if progresses[i] < 100 {
                progresses[i] += speeds[i]
                CompleteCounts[i] += 1
            }
        }
    }
    
    var firstCount = CompleteCounts.first ?? 0
    var count = 0
    var countArr: [Int] = []
    
    for i in 0..<CompleteCounts.count {
        print(firstCount, CompleteCounts[i])
        if firstCount >= CompleteCounts[i] {
            count += 1
        } else {
            countArr.append(count)
            count = 1
            firstCount = CompleteCounts[i]
        }
    }
    countArr.append(count)
    return countArr
}