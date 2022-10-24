import Foundation

func solution(_ balls:Int, _ share:Int) -> Double {
    var balls: Int = balls
    var share: Int = share
    var answer: Double = 1
    
    for i in 0..<balls - share {
        answer *= Double(balls - i)
    }
    
    for i in 0..<balls - share {
        answer /= Double(balls - share - i)
    }
    
    return answer
}
