import Foundation

var dict: [Int: Int] = [:]

for i in 1...8 {
    dict[i] = Int(readLine()!)!
}

var sortedDict = dict.sorted{ $0.1 > $1.1}
var sum = 0
var num = ""
var i = 1

for (k, v) in sortedDict where i <= 5{
    sum += v
    num += String(k)
    i += 1
}

print(sum)
print(Array(num).sorted().map{String($0)}.joined(separator: " "))