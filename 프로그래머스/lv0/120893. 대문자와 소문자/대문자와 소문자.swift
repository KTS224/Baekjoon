import Foundation

func solution(_ my_string:String) -> String {
    var answer = ""
    
    my_string.forEach { char in
        if char.isLowercase {
            answer += String(char).uppercased()
        } else {
            answer += String(char).lowercased()
        }
    }
    
    return answer
}