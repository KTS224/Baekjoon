import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    // var arrarr: [Int] = [0] // 스테이지별 유저 수
    var users: Int = stages.count
    var failRate: [Double] = [0]
    var result: [Int] = []
    
    for i in 1...N {
//        arrarr.append(stages.filter { $0 == i }.count)
        var stageUsers = 0
        for j in 0..<stages.count {
            if stages[j] == i {
                stageUsers += 1
            }
        }
        
        failRate.append(Double(stageUsers) / Double(users))
        users -= stageUsers
    }
    
//    for i in 1...N {
//        failRate.append(Double(arrarr[i]) / Double(users))
//        users -= arrarr[i]
//    }


    for i in failRate.enumerated().sorted(by: { $0.1 > $1.1 }) {
        result.append(i.offset)
    }

    result.remove(at: result.firstIndex(of: 0) ?? 0)

    return result
}