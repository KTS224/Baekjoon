import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var dic: [Character: String] = [:]
    var allNum = "0123456789"
    allNum.forEach { num in
        dic[num] = ""
    }

    X.forEach { num in
        dic[num]! += "X"
    }
    
    Y.forEach { num in
        dic[num]! += "Y"
    }
    
    var str = ""

    dic.forEach { (key: Character, value: String) in
        var Xcount = 0
        var Ycount = 0
        
        value.forEach { Character in
            if Character == "X" {
                Xcount += 1
            } else if Character == "Y" {
                Ycount += 1
            }
        }
        
        if Xcount != 0 && Ycount != 0 {
            var numberCount = Xcount > Ycount ? Ycount : Xcount
            for _ in 1...numberCount {
                str += String(key)
            }
        }
    }
    
    if String(str.sorted(by: >)).first == "0" {
        return "0"
    }
    
    return str == "" ? "-1" : String(str.sorted(by: >))
}