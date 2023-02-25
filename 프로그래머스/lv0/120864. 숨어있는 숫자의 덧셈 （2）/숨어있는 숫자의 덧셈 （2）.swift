import Foundation

func solution(_ my_string:String) -> Int {
    var temp = ""
    var arr: [Int] = []
    
    for i in my_string + "q" {
        if i.isNumber {
            temp += String(i)
        } else {
            if temp != "" {
                arr.append(Int(temp) ?? 0)
            }
            temp = ""
        }
    }
    
    return arr.reduce(0, +)
}