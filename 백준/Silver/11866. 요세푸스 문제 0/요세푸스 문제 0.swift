import Foundation

var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr: [Int] = Array(1...input[0])
var k = input[1] - 1 // 2

print("<", terminator: "")

while !arr.isEmpty {
    guard arr.count != 1 else {
        print(arr[0], terminator: "")
        break
    }
    
    print((arr.remove(at: k)), terminator: ", ")
    k += input[1] - 1
    
    while k >= arr.count {
        k -= arr.count
    }
}

print(">")