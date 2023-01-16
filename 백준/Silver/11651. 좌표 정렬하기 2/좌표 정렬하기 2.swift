var num = Int(readLine()!)!
var arr: [(Int, Int)] = []

for _ in 1...num {
    let num1 = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((num1.first!, num1.last!))
}

arr.sort { $0.1 < $1.1 }
arr.sort {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    } else {
        return false
    }
}

for (n, m) in arr {
    print("\(n) \(m)")
}