import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var num_list: [Int] = num_list
    var answer = [[Int]]()
    
    for _ in 1...num_list.count/n {
        var arr = [Int]()
        
        for _ in 1...n {
            arr.append(num_list.removeFirst())
        }
        
        answer.append(arr)
    }
    
    return answer
}