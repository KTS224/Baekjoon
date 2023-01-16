var num = Int(readLine()!)!
var arr: [(Int, Int)] = []

for _ in 1...num {
    var num1 = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((num1.first!, num1.last!))
}

arr.sort { $0.0 < $1.0 }
arr.sort {
    if $0.0 == $1.0 {
        return $0.1 < $1.1
    } else {
        return false
    }
}

for (n, m) in arr {
    print("\(n) \(m)")
}