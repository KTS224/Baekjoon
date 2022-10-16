import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var zeroCount: Int = 0

    for i in lottos {
        zeroCount += i == 0 ? 1 : 0
    }
    
    var arr = lottos.filter { $0 == win_nums[0] || $0 == win_nums[1] || $0 == win_nums[2] || $0 == win_nums[3] || $0 == win_nums[4] || $0 == win_nums[5] }
    
    return [changeToRank(from: arr.count + zeroCount), changeToRank(from: arr.count)]
}

func changeToRank(from num: Int) ->Int {
    switch num {
    case 6:
        return 1
    case 5:
        return 2
    case 4:
        return 3
    case 3:
        return 4
    case 2:
        return 5
    default:
        return 6
    }
}