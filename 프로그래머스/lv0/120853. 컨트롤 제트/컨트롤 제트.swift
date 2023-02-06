import Foundation

func solution(_ s:String) -> Int {
    var arr = s.components(separatedBy: " ")
    var answer = 0
    
    for i in 0..<arr.count {
        answer += arr[i] == "Z" ? -1 * Int(arr[i-1])! : Int(arr[i])!
    }
    
    return answer
}