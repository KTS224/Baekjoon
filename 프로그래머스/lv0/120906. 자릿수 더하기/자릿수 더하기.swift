import Foundation

func solution(_ n:Int) -> Int { Array(String(n)).compactMap { Int(String($0)) }.reduce(0, +) }