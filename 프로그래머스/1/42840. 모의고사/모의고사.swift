import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let patterns = [
        [1, 2, 3, 4, 5],
        [2, 1, 2, 3, 2, 4, 2, 5],
        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]
    
    var scores = [0, 0, 0]
    
    for (i, answer) in answers.enumerated() {
        for (k, pattern) in patterns.enumerated() {
            if answer == pattern[i % pattern.count] {
                scores[k] += 1
            }
        }
    }
    
    let maxScore = scores.max()
    var highestScore: [Int] = []
    
    for (i, score) in scores.enumerated() {
        if score == maxScore {
            highestScore.append(i + 1)
        }
    }
    
    return highestScore
}