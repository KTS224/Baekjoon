import Foundation

var N = Int(readLine()!)!
for _ in 1...N {
    let M = readLine()!.split(separator: " ").map { Int(String($0))! }
    var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
    var count = M.last!
    var answer = 0
    
    while arr.count != 0 {
        if arr[0] != arr.max()! {
            arr.append(arr.remove(at: 0))
            count = count == 0 ? arr.count - 1 : count - 1
        } else if arr[0] == arr.max() {
            arr.removeFirst()
            answer += 1
            
            if count == 0 {
                break
            }
            
            count -= 1
        }
    }
    
    print(answer)
}