import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var arrr = arr
    
    let firstIndex = arrr.firstIndex(of: 2) ?? -1
    guard firstIndex != -1 else { return [-1] }
    arrr.remove(at: firstIndex)
    
    let lastIndex = arrr.lastIndex(of: 2) ?? -1
    guard lastIndex != -1 else { return [2] }
    
    return Array(arr[firstIndex...lastIndex+1])
}