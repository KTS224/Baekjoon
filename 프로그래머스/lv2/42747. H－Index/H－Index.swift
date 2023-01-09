import Foundation

func solution(_ citations:[Int]) -> Int {
    var citations = citations.sorted(by: >)
    
    for i in 0..<citations.count {
        if citations[i] == i + 1 {
            return i + 1
        } else if citations[i] < i + 1 {
            return i
        }
    }

    return citations.count
}