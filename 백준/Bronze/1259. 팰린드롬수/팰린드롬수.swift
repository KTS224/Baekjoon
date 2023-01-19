import Foundation

while let line = readLine() {
    if Int(line) == 0 {
        break
    }
    
    var arr = Array(line)
    var count = 0
    
    for i in 0..<arr.count/2 {
        if arr[i] != arr[arr.count-1-i] {
            count -= 1
            break
        }
    }
    
    count == 0 ? print("yes") : print("no")
}