import Foundation

func solution(_ age:Int) -> String {
    var str = ""
    
    var arr = String(age).map { String(UnicodeScalar(Int(String($0))! + 97)!)}
    
    for i in arr {
        str.append(i)
    }
    
    return str
}