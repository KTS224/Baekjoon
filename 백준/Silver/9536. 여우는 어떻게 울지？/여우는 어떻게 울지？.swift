import Foundation

var n = Int(readLine()!)!

for _ in 1...n {
    var sentence = readLine()!.split(separator: " ").map { String($0) }
    
    while true {
        let str = readLine()!
        guard str != "what does the fox say?" else { break }
        let arr = str.split(separator: " ")
        sentence = sentence.filter { $0 != arr.last! }
    }
    
    print(sentence.joined(separator: " "))
}