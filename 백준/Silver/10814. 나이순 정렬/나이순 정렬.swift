var num = readLine()!
var arr: [(Int, String)] = []

for _ in 1...Int(num)! {
    var input = readLine()!.split(separator: " ").map{String($0)}
    arr.append((Int(input[0])!, input[1]))
}

arr.sorted { $0.0 < $1.0 }.forEach { (Int, String) in
    print("\(Int) \(String)")
}