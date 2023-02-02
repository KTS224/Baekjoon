import Foundation

func solution(_ n:Int) -> Int {
    var arr: [Int] = Array(1...n)
    
    for num in arr {
        var count = 0
        
        for i in 1...num {
            if num % i == 0 {
                count += 1
                
                if count > 2 {
                    break
                } 
            } 
        }
        
        if count < 3 {
            arr[num-1] = 0
        }
    }
    
    return arr.filter { $0 != 0 }.count
}