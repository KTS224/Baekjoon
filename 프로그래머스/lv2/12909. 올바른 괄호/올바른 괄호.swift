import Foundation

func solution(_ s: String) -> Bool {
    var count: Int = 0
    
    for char in s {
        if count == 0 && char == ")" {
            return false
        }
        
        count += char == "(" ? 1 : -1
    }
    
    return count == 0 ? true : false
}