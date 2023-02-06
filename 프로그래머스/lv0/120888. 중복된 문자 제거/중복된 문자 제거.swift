import Foundation

func solution(_ my_string:String) -> String {
    var arr: [Character] = []
    
    my_string.forEach { char in
        if !arr.contains(char) {
            arr.append(char)
        }
    }
    
    return String(arr)
}