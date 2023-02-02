import Foundation

var input1 = readLine()!.split(separator: " ").map{Int($0)!}
var start = input1[0]
var end = input1[1]
var arr = Array(repeating: true, count: end + 1)

if end > 1 {
    for num in 2...Int(ceil(sqrt(Double(end)))) {
        var count = 0
        
        for i in 1...num {
            if num % i == 0 {
                count += 1
            }
        }
        
        if count == 2 {
            for i in stride(from: num + num, through: end, by: num) {
                arr[i] = false
            }
        }
    }
    
    if start == end && arr[start] {
        print(start)
    } else {
        var temp = start == 1 ? start + 1 : start
        
        for i in temp...end {
            if arr[i] {
                print(i)
            }
        }
    }
}