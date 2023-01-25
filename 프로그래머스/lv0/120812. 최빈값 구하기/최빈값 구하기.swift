import Foundation

func solution(_ array:[Int]) -> Int {
    var arr = Array(repeating: 0, count: 1000)
    
    array.forEach { num in
        arr[num] += 1
    }
    
    return arr.firstIndex(of: arr.max()!)! == arr.lastIndex(of: arr.max()!)! ? arr.firstIndex(of: arr.max()!)! : -1
}