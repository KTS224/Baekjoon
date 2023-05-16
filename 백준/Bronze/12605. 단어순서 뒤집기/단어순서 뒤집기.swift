import Foundation

let N = Int(readLine()!)!

for i in 1...N {
    var L = readLine()!.split(separator: " ")
    var answer = L.last!

    for i in stride(from: L.count-2, through: 0, by: -1) {
        answer += " " + L[i]
    }

    print("Case #\(i):", answer)
}