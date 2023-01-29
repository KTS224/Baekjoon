import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var answer = ""
    
    for char in my_string {
        for i in 1...n {
            answer.write(String(char))
        }
    }
    
    return answer
}