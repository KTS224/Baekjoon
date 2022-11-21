import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var arr = Array(repeating: 100, count: n + 2)
    var reserve = reserve.sorted()
    var answer: Int = 0
    
    for index in lost {
        arr[index] = index
    }
    
    for index in reserve {
        if arr[index] == index { // 여분이 있는데 도난당한 경우 해결
            arr[index] = 100
            reserve.remove(at: reserve.firstIndex(of: index)!)
        }
    }
    
    for index in reserve {
        if arr[index-1] == index-1 {
            arr[index-1] = 100
            reserve.remove(at: reserve.firstIndex(of: index)!)
        } else if arr[index+1] == index+1 {
            arr[index+1] = 100
            reserve.remove(at: reserve.firstIndex(of: index)!)
        }
    }
    
    for item in arr {
        if item == 100 {
            answer += 1
        }
    }

    return answer - 2
}