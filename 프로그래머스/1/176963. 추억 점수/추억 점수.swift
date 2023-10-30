import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var photos = photo
    var dict = zip(name, yearning)
    var scores: [Int] = Array(repeating: 0, count: photo.count)
    var index = 0
    
    for photo in photos {
        for name in photo {
            for d in dict {
                if name == d.0 {
                    scores[index] += d.1
                }
            }
        }
        index += 1
    }
    
    return scores
}