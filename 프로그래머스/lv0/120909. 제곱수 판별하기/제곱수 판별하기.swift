import Foundation

func solution(_ n:Int) -> Int { sqrt(Double(n)).truncatingRemainder(dividingBy: 1) == 0 ? 1 : 2 }