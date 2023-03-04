import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    var result = 2
    
    dic.forEach { word in
        var arr: [Bool] = Array(repeating: false, count: spell.count)
        word.forEach { c in
            for i in 0..<spell.count {
                if spell[i] == String(c) {
                    arr[i] = true
                }
            }
        }
        
        if arr.filter({ $0 == true }).count == spell.count {
            result = 1
        }
    }
    
    return result
}