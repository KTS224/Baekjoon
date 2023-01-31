let _ = readLine()!
var input2 = Set(readLine()!.split(separator: " ").map{Int(String($0))!})
let _ = readLine()!
var input4 = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in input4 {
    input2.contains(i) ? print("1") : print("0")
}