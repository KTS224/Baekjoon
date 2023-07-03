import Foundation

var grades: [String: Double] = ["A+": 4.5, "A0": 4.0, "B+": 3.5, "B0": 3.0, "C+": 2.5, "C0": 2.0, "D+": 1.5, "D0": 1.0]
var count: Double = 0
var score: Double = 0

for _ in 1...20 {
    let str = readLine()!
    guard str.last! != "P" else { continue }
    
    let temp = str.suffix(6).split(separator: " ")
    count += Double(temp[0])!
    
    guard str.last! != "F" else { continue }
    score += Double(temp[0])! * grades[String(temp[1])]!
}

print(score == 0 ? "0.000000" : score/count)