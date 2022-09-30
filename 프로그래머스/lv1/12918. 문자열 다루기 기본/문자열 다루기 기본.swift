func solution(_ s:String) -> Bool {
    
    guard s.count == 4 || s.count == 6 else {
        return false
    }
    
    if let s = Int(s) { // nil이 아닐경우 true
        return true
    }
    
    return false
}