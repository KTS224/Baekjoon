import Foundation

var num = Int(readLine()!)!
var arr: [String] = []
for _ in 1...num {
    guard var input = readLine() else { break }
    arr.append(input)
}

var ans = Set(arr).sorted {
    $0.count < $1.count
}

ans.sort {
    if $0.count == $1.count {
        return $0 < $1
    }
    return false
}

ans.forEach { str in
    print(str)
}