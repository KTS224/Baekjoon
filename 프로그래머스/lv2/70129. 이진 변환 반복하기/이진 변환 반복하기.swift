import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var convetCount = 0
    var zeroCount = 0
    var length = 0
    
    while s != "1" {
        var 이진결과 = ""
        
        for char in s {
            if char == "1" {
                이진결과 += "1"
            } else if char == "0" {
                zeroCount += 1
            }
        }
        
        length = 이진결과.count
        이진결과 = ""
        
        while length > 0 {
            이진결과 = String(length % 2) + 이진결과
            length = length / 2
        }
        s = 이진결과
        convetCount += 1
    }
    
    return [convetCount, zeroCount]
}