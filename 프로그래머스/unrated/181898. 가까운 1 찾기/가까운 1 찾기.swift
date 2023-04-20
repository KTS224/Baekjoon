import Foundation

func solution(_ arr:[Int], _ idx:Int) -> Int {
    for i in idx..<arr.count {
        guard arr[i] != 1 else { return i }
    }
    
    return -1
}