import Foundation

var queue: [Int] = []
var count = Int(readLine()!)!

for _ in 1...count {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    switch input[0] {
    case "push":
        queue.append(Int(input[1])!)
    case "front":
        print(queue.first ?? "-1")
    case "back":
        print(queue.last ?? "-1")
    case "size":
        print(queue.count)
    case "empty":
        print(queue.isEmpty ? "1" : "0")
    case "pop":
        print(queue.isEmpty ? "-1" : queue.removeFirst())
    default:
        continue
    }
}