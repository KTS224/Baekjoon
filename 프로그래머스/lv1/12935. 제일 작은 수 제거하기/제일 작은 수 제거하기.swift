func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    
    if arr.count == 1 {
        return[-1]
    }
    
    arr.remove(at: arr.firstIndex(of: arr.min()!)!)
    
    return arr
}
