func solution(_ s:String) -> String {
    var arr = Array(s.lowercased())
    
    if String(arr[0]) != "" {
        arr[0] = Character(String(arr[0]).uppercased())
    }
    
    for i in 1..<arr.count {
        if arr[i-1] == " " && arr[i] != " " {
            arr[i] = Character(String(arr[i]).uppercased())
        }
    }
    
    return String(arr)
}