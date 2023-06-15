import Foundation

readLine()
var input = readLine()!.split(separator: " ").compactMap { Int($0) }
var arr = Set(input).sorted()
print(arr.map { String($0) }.joined(separator: " "))