import Foundation

var lStack: [Character] = []
var rStack: [Character] = []   // insert는 시간 복잡도 오래걸리니까 -> rStack 은 뒤집어진 순서임!

lStack = Array(readLine()!)
let M = Int(readLine()!)!

for _ in 1...M {
    let command = readLine()!
    execute(command)
}

print(String(lStack + rStack.reversed()))

func execute(_ command: String) {
    if command.first! == "P" {
        lStack.append(command.last!)
    } else if command.first! == "L" && !lStack.isEmpty {
        rStack.append(lStack.popLast()!)
    } else if command.first! == "D" && !rStack.isEmpty {
        lStack.append(rStack.popLast()!)
    } else if command.first! == "B" && !lStack.isEmpty {
        lStack.popLast()
    }
}

func printStacks() {
    print("\(lStack.map{String($0)}.joined())\(rStack.reversed().map{String($0)}.joined())")
}