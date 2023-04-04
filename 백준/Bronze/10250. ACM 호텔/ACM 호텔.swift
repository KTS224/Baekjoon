import Foundation

var count = Int(readLine()!)!

for _ in 1...count {
    var input = readLine()!.split(separator: " ").map{Int(String($0))!}
    var lastNum = input.last!
    var firstNum = input.first!
    var i = 1

    while lastNum > firstNum {
        lastNum -= firstNum
        i += 1
    }
    
    print(i < 10 ? "\(lastNum)0\(i)" : "\(lastNum)\(i)")
}