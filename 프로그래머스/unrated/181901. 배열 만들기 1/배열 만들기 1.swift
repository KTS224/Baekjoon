import Foundation

func solution(_ n:Int, _ k:Int) -> [Int] {
    var arr: [Int] = []
    
    for i in 1...n/k {
        arr.append(i*k)
    }
    
    return arr
}