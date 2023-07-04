import Foundation

var mn = readLine()!.split(separator: " ").compactMap { Int($0) }

var dict: [Character: String] = ["0": "zero", "1": "one", "2": "two", "3": "three", "4": "four", "5": "five", "6": "six", "7": "seven", "8": "eight", "9": "nine"]
var arr : [Int: String] = [:]

for i in mn[0]...mn[1] {
    var temp = ""
    for k in Array(String(i)) {
        temp += dict[k]! + " "
    }
    
    arr[i] = temp
}

var count = 0

for i in arr.sorted(by: { $0.value < $1.value }) {
    count += 1
    
    if count < 10 {
        print(i.key, terminator: " ")
    } else {
        print(i.key)
        count = 0
    }
}