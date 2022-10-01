import Foundation

func solution(_ n: Int) -> Int {
    var answer: Int = 0
    var intToString: String = String(n)
    var stringToArray: [String] = []
    // let stringToArray = nToString.compactMap{ $0.wholeNumberValue }
    
    for _ in 1...intToString.count {
        stringToArray.append(String(intToString.suffix(1)))
        intToString.popLast()
    }
    
    for index in 0..<stringToArray.count {
        answer += Int(stringToArray[index]) ?? 0
    }
    
    return answer
}