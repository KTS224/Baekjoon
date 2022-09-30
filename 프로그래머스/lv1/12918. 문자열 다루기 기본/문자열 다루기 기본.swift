func solution(_ s:String) -> Bool {
    
    guard let a = Int(s) , s.count == 4 || s.count == 6 else { //조건이 참일경우 밖으로 넘어감
        return false
    }

    return true
}