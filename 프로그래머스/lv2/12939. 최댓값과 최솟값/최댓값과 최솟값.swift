func solution(_ s:String) -> String {
    var arr = s.components(separatedBy: " ")
    var min = arr.removeFirst()
    var max = min
    
    arr.forEach { num in
        if Int(num)! >= Int(max)! {
            max = num
        } else if Int(num)! <= Int(min)! {
            min = num
        }
    }
    
    return min + " " + max
}