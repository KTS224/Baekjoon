import Foundation

var nm = readLine()!.split(separator: " ").compactMap { Int($0) }
var s: Set<String> = []
var count = 0

for _ in 0..<nm[0] {
    s.insert(readLine()!)
}

for _ in 0..<nm[1] {
    var temp = readLine()!
    
    if s.contains(temp) {
        count += 1
    }
}

print(count)