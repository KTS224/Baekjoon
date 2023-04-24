import Foundation

var S = readLine()!
var T = readLine()!

while T.count != S.count {
    if T.last == "A" {
        T.popLast()
        if T.count == S.count {
            break
        }
    }
    
    if T.last != "A" {
        T.popLast()
        T = String(T.reversed())
    }
}

print(S == T ? "1" : "0")