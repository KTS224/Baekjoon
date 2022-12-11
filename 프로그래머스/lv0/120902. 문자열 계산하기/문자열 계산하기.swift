import Foundation

func solution(_ my_string:String) -> Int {
    var arr = my_string.split(separator: " ")
    var numArr = arr.filter { (Int($0) != nil) }
    var operArr = arr.filter { Int($0) == nil }
    var answer = Int(numArr.removeFirst())
    
    for i in 0..<numArr.count {
        answer! += calculateBy(oper: String(operArr[i]), num: Int(numArr[i])!)
    }
    return answer!
}

func calculateBy(oper: String, num: Int) -> Int {
    if oper == "+" {
        return num
    } else {
        return -num
    }
}