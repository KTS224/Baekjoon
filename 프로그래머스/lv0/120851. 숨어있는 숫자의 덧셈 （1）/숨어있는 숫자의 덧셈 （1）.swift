import Foundation

func solution(_ my_string:String) -> Int {
    var num = my_string.filter { Int(String($0)) != nil }
    var answer = 0
    
    for i in num {
        answer += Int(String(i))!
    }
    
    return answer
}