import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let arr = Array(t)
    var count = 0
    
    for i in 0...arr.count-p.count {
        var num = 0
        var powNum = p.count - 1
        
        for k in i...p.count+i-1 {
            num += Int(String(arr[k]))! * Int(pow(10, Double(powNum)))
            powNum -= 1
        }
        
        if num <= Int(p)! {
            count += 1
        }
    }
    
    return count
}