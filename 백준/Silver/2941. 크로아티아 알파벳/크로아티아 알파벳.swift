import Foundation

let cAlphas = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var word = readLine()!

for cAlpha in cAlphas {
    word = word.replacingOccurrences(of: cAlpha, with: "1")
}

print(word.count)