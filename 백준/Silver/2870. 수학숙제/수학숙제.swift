import Foundation

let filter: [Character] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
var arr: [String] = []
let n = Int(readLine()!)!

for _ in 1...n {
    let str = readLine()!
    var temp = ""
    
    for c in str {
        if filter.contains(c) {
            temp += String(c)
        } else {
            removeZero(temp)
            temp = ""
        }
    }

    removeZero(temp)
}

for n in arr.sorted(by: { Double($0)! < Double($1)! }) {
    print(n)
}

func removeZero(_ temp: String) {
    if temp != "" {
        var rt = String(temp.reversed())
        
        while rt.last == "0" {
            guard rt != "0" else { break }
            rt.removeLast()
        }
        
        if rt != "" {
            arr.append(String(rt.reversed()))
        }
    }
}