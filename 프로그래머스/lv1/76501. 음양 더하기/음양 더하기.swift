import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
    var sum: Int = 0
    
    for index in 0 ..< signs.count {
        // 여기서 true false 는 String 이 아닌 Bool값이다. 유의
        if signs[index] == false { 
            sum -= absolutes[index]
        } else {
            sum += absolutes[index]
        }
    }
    
    return sum
}