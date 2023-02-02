import Foundation

func solution(_ rsp:String) -> String {
    var answer = ""
    
    for i in rsp {
        answer += (i == "2") ? "0" : (i == "0") ? "5" : (i == "5") ? "2" : ""
    }
    
    return answer
}