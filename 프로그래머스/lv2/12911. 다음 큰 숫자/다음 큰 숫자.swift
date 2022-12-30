import Foundation

func solution(_ n:Int) -> Int {
    var result = String(n, radix: 2)
    var 일의개수 = result.filter{$0 == "1"}.count
    var 답: Int = 0
    var k = n + 1
    
    while 답 < n {
        var kResult = String(k, radix: 2)
        var k일의개수 = kResult.filter{$0 == "1"}.count
        
        if k일의개수 == 일의개수 && 답 < n {
            답 = Int(kResult, radix: 2)!
        }

        k += 1
    }
    
    return 답
}