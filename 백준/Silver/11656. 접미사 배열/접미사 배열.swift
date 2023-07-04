import Foundation

var s = readLine()!
var str = Array(s)
var arr: [String] = []

for i in 0..<str.count {
    arr.append(String(str[i..<str.count]))
}

for word in arr.sorted() {
    print(word)
}