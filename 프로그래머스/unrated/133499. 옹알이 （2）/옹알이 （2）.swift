import Foundation

func solution(_ babbling:[String]) -> Int {
    var result = 0
    
    babbling.forEach { 옹알이 in
        var 연속체크: [Bool] = [false, false, false, false]
        var arr = Array(옹알이)
        
        for _ in 1...15 {
            if !연속체크[0] && arr.count >= 3 && arr[0] == "a" && arr[1] == "y" && arr[2] == "a" {
                arr.removeFirst(3)
                연속체크 = [true, false, false, false]
            }

            if !연속체크[1] && arr.count >= 2 && arr[0] == "y" && arr[1] == "e" {
                arr.removeFirst(2)
                연속체크 = [false, true, false, false]
            }

            if !연속체크[2] && arr.count >= 3 && arr[0] == "w" && arr[1] == "o" && arr[2] == "o" {
                arr.removeFirst(3)
                연속체크 = [false, false, true, false]
            }

            if !연속체크[3] && arr.count >= 2 && arr[0] == "m" && arr[1] == "a" {
                arr.removeFirst(2)
                연속체크 = [false, false, false, true]
            }
        }
        
        if arr.isEmpty {
            result += 1
        }
    }
    
    return result
}