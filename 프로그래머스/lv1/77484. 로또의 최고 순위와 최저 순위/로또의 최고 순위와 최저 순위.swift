import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var zeroCount: Int = 0
    var arr: [[Int]] = []

    for i in lottos {
        zeroCount += i == 0 ? 1 : 0
    }

	for i in 0..<win_nums.count {
	   arr.append(lottos.filter { $0 == win_nums[i] })
	}
		
	var flatArr = arr.flatMap { $0 }

    return [changeToRank(from: flatArr.count + zeroCount), changeToRank(from: flatArr.count)]
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