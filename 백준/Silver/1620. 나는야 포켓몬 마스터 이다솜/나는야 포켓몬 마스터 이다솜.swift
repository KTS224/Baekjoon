import Foundation

let NM = readLine()!.split(separator: " ")
let N = NM.first!
let M = NM.last!

var numDict: [Int: String] = [:]
var nameDict: [String: Int] = [:]

for i in 1...Int(N)! {
    let input = readLine()!
    
    numDict[i] = input
    nameDict[input] = i
}

for _ in 1...Int(M)! {
    let input = readLine()!
    
    if (Int(input) != nil) {
        //숫자일때
        print(numDict[Int(input)!]!)
    } else {
        //문자일때
        print(nameDict[input]!)
    }
}