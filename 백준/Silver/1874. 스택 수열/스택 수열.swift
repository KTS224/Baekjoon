import Foundation

var input1 = Int(readLine()!)!
var stack: [Int] = []
var count = 1
var str = ""

for _ in 1...input1 {
    let input2 = Int(readLine()!)!
    
    if count <= input2 {
        for num in count...input2 {
            count += 1
            stack.append(num)
            str.write("+" + "\n")
        }
        stack.popLast()
        str.write("-" + "\n")
    } else if input2 == stack.last {
        stack.popLast()
        str.write("-" + "\n")
    } else {
        str = "NO"
        break
    }
}

print(str)