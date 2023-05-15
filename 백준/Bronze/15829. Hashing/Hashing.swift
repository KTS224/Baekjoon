import Foundation

let L = Int(readLine()!)!
let str = readLine()!
let arr = Array(str)
var sum = 0

for i in 0..<str.count {
    sum += (Int(UnicodeScalar(String(arr[i]))!.value) - 96) * Int(pow(31, Double(i))) % 1234567891
}

print(sum % 1234567891)