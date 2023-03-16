import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var k = num / 2
    var i = 0
    var result: [Int] = []
    
    while result.count < num {
        result.insert(total / num + k - i, at: 0)
        i += 1
    }
    
    return result
}