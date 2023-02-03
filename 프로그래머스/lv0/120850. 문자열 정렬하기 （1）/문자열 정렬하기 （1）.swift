import Foundation

func solution(_ my_string:String) -> [Int] { my_string.filter { Int(String($0)) != nil }.sorted().map { Int(String($0))! } }