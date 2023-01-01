import Foundation

func solution(_ my_string:String) -> String {
    return my_string.replacingOccurrences(of:"[aeiou]", with:"", options: .regularExpression)
}