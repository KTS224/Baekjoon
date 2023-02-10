import Foundation

var N = Int(readLine()!)!

if N == 1 {
    print("1")
} else {
    var k = 1
    var count = 2
    
    for i in 2...N {
        if i == count {
            count = 2
        } else {
            count += 2
        }
        k += 1
    }
    print(count == 2 ? "\(k)" : "\(count-2)")
}