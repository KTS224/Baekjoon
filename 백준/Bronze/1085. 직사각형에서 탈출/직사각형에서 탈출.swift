import Foundation

var num = readLine()!.split(separator: " ").map{Int(String($0))!}
print(min(min(abs(num[0]-num[2]), num[0]), min(abs(num[1]-num[3]), num[1])))