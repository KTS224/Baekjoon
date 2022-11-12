func solution(_ s:String, _ n:Int) -> String {
    var n = UInt16(n)
    var answer: String = ""

    for w in s.utf16 {
        var i = w
        
        i = i == 32 ? i : i + n // 공백 처리
        
        if w < 91 { // 처음 들어온 문자가 A ~ Z 이고
            if i > 90 { // 변환한 문자가 Z 보다 크면 
                i -= 26  // -26
            }
        } else if w > 96 {  // 처음 들어온 문자가 a ~ z 이고
            if i > 122 { // 변환한 문자가 z 보다 크면 
                i -= 26 // -26
            }
        }
     
        answer += String(UnicodeScalar(Int(i))!)
    }
    
    return answer
}