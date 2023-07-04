import Foundation

var nm = readLine()!.split(separator: " ")
var s: Set<String> = []
var arr: [String] = []

for _ in 0..<Int(nm[0])! {
    s.insert(readLine()!)
}

for _ in 0..<Int(nm[1])! {
    let name = readLine()!
    let count = s.count
    
    s.insert(name)
    if count == s.count {
        arr.append(name)
    }
}

print(arr.count)
for n in arr.sorted() {
    print(n)
}