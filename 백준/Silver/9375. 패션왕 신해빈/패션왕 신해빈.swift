import Foundation

var t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    var dict: [Substring: Int] = [:]
    var answer = 1
    
    for _ in 0..<n {
        let cloth = readLine()?.split(separator: " ")
        
        if dict[cloth![1]] != nil {
            dict[cloth![1]]! += 1
        } else {
            dict[cloth![1]] = 1
        }
    }
    
    for (_, v) in dict {
        answer *= v + 1
    }
    
    print(answer - 1)
}