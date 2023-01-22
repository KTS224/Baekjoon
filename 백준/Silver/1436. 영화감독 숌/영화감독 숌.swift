import Foundation

var input = Int(readLine()!)!
var num = 665
var temp = num
var count = 0

while true {
    if temp % 1000 == 666 {
        count += 1
        
        if count == input {
            print(num)
            break
        }
    } else if temp / 1000 > 0 {
        temp /= 10
        continue
    }
    num += 1
    temp = num
}