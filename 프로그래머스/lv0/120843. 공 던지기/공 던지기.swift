import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    var arr = Array(repeating: numbers, count: k).flatMap { $0 }
    return k == 1 ? arr[0] :arr[(k-1)*2]
}