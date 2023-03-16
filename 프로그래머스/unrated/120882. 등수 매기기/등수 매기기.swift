import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    var aver = score.map { $0[0] + $0[1] }
    var sorted = aver.sorted(by: >)
    var count = 1
    var same = 0
    
    for i in 0..<sorted.count {
        same = i != 0 ? sorted[i] == sorted[i-1] ? same + 1 : 0 : same
        
        aver[aver.firstIndex(of: sorted[i])!] = i != 0 ? sorted[i] == sorted[i-1] ? -1*(count-same) : -1*(count) : -1*(count)
        
        count += 1
    }

    return aver.map { -1*$0 }
}