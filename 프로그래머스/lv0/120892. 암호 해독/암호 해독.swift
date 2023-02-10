import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var count = 0
    var result = ""
    
    cipher.forEach { char in
        count += 1
                    
        if count == code {
            result += String(char)
            count = 0
        }
    }
    
    return result
}