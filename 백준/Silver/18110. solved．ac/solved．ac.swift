import Foundation

var n = Double(readLine()!)!
var arr: [Int] = []

if n == 0 {
    print("0")
} else {
    for _ in 1...Int(n) {
        arr.append(Int(readLine()!)!)
    }
    arr.sort()

    let num = n * 0.3 / 2
    var score: Double = 0

    for i in Int(round(num))..<arr.count-Int(round(num)) {
        score += Double(arr[i])
    }

    let count = arr.count-2*Int(round(num))
    print(Int(round(score/Double(count))))
}