func solution(_ s:String, _ n:Int) -> String {
    var arr: [Int] = []
    var n = UInt16(n)
    var asciiArr: [String] = []
    var answer: String = ""

    for w in s.utf16 {
        var i = w

        if i == 90 {
            i = 64
        } else if i == 122 {
            i = 96
        }
        
        i = i == 32 ? i : i + n
        
        if w < 91 {
            if i > 90 {
                i -= 26
            }
        } else if w > 96 {
            if i > 122 {
                i -= 26
            }
        }
     
        arr.append(Int(i))
    }

    for i in arr {
        asciiArr.append(String(UnicodeScalar(i)!))
    }

    for i in asciiArr {
        answer += i
    }
    
    return answer
}