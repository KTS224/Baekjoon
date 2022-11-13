import Foundation

func solution(_ new_id:String) -> String {
    let bannedCharacters = ["~", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "=", "+", "[", "{", "]", "}", ":", "?", ",", "<", ">", "/"]
    var answer = new_id.lowercased()// 1단계
    
    for char in bannedCharacters {
        answer = answer.replacingOccurrences(of: char, with: "")   // 2단계
    }
    
    for _ in 1...answer.count {
        answer = answer.replacingOccurrences(of:  "..", with: ".") // 3단계
        removeFirstOrLastDot(&answer) // 4 단계
    }
    
    if answer.isEmpty { // 5 단계
       answer = "a"
    }
    
    while answer.count >= 16 { // 6단계
        answer.removeLast()
    }
    
    removeFirstOrLastDot(&answer) // 4 단계
    
    while answer.count <= 2 { // 7 단계
        answer.append(String(answer.suffix(1)))
    }
    
    return answer
}

func removeFirstOrLastDot(_ answer: inout String) {
    if answer.hasPrefix(".") { // 4-1단계
        answer.removeFirst()
    }
    
    if answer.hasSuffix(".") { // 4-2단계
        answer.removeLast()
    }
}