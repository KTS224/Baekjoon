import Foundation

let N = Int(readLine()!)!
var cards: [Int] = Array(1...N)
var trashes: [Int] = []

while cards.count != 1 {
    trashes.append(cards.remove(at: 0))
    cards.append(cards.remove(at: 0))
}

trashes.append(cards[0])
print(trashes.map { String($0) }.joined(separator: " "))