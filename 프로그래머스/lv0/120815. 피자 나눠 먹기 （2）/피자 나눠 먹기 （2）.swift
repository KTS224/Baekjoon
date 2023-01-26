import Foundation

func solution(_ n:Int) -> Int {
    var temp = 0
    for i in 1...max(n, 6) {
        if n%i == 0 && 6%i == 0 {
            temp = i
        }
    }
    return n/temp
}