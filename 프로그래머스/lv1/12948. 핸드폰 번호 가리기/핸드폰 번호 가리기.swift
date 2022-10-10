func solution(_ phoneNumber: String) -> String {
    var s: String = phoneNumber

    s.removeFirst(phoneNumber.count - 4)
    
    guard phoneNumber.count > 4 else {
        return s
    }
    
    for _ in 1 ... phoneNumber.count - 4 {
        s = "*" + s
    }
        
    return s
}
