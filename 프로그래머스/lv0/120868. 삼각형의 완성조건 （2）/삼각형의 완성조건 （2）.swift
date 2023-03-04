import Foundation

func solution(_ sides:[Int]) -> Int {
    let sMax = sides.max()!
    let sMin = sides.min()!
    var answer = 0
    
    for _ in (sMax - sMin + 1)...(sMax + sMin - 1) {
        answer += 1
    }
    
    return answer
}