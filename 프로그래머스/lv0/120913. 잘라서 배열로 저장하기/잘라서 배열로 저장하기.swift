import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var result: [String] = []
    var count = 0
    var temp = ""
    
    for i in my_str {
        if count == n {
            result.append(temp)
            count = 1
            temp = String(i)
        } else {
            count += 1
            temp += String(i)
        }
    }
    
    result.append(temp)
    
    return result
}