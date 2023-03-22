import Foundation

while let input = readLine() {
    guard input != "." else { break }
    
    var filteredStr = input.filter { $0 == "(" || $0 == ")" || $0 == "[" || $0 == "]" }
    var stack: [Character] = []

    for i in filteredStr {
        if i == "(" || i == "[" {
            stack.append(i)
        } else if i == ")" && stack.last ?? " " == "(" {
            stack.popLast()
        } else if i == "]" && stack.last ?? " " == "[" {
            stack.popLast()
        } else {
            stack.append(" ")
        }
    }

    print(stack.isEmpty ? "yes" : "no")
}