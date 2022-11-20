import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var users: Int = stages.count
    var failRate: [Double] = [0]
    var result: [Int] = []
    
    for i in 1...N {
        var stageUsers = 0
        
        for j in 0..<stages.count {
            if stages[j] == i {
                stageUsers += 1
            }
        }

        failRate.append(Double(stageUsers) / Double(users))
        users -= stageUsers
    }

    for i in failRate.enumerated().sorted(by: { $0.1 > $1.1 }) {
        result.append(i.offset)
    }

    result.remove(at: result.firstIndex(of: 0) ?? 0)

    return result
}