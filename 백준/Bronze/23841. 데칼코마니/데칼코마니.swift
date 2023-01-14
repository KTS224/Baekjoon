var num = readLine()!.split(separator: " ").map{Int(String($0))!}

for _ in 1...num[0] {
    guard var input = readLine() else { break }
    var arr = Array(input)
    var temp = ""
    
    for i in 0...num.last! / 2 - 1 {
        if arr[i] != "." {
            temp += String(arr[i])
        } else if arr[arr.count - 1 - i] != "." {
            temp += String(arr[arr.count - 1 - i])
        } else {
            temp += "."
        }
    }
    print("\(temp)\(String(temp.reversed()))")
}