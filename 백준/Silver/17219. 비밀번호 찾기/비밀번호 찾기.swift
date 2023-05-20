import Foundation

let NM = readLine()!.split(separator: " ")
let N = NM.first!
let M = NM.last!

var dict: [String: String] = [:]

for _ in 1...Int(N)! {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    dict[input.first!] = input.last!
}

for _ in 1...Int(M)! {
    print(dict[readLine()!]!)
}