var num = readLine()!.split(separator: " ").map{Int(String($0))!}
var num1 = readLine()!.split(separator: " ").map{Int(String($0))!}
num1.sort(by: >)
var arr: [Int] = Array(repeating: 0, count: num.last!)

if arr.count == 1 {
    print(num1.reduce(0) { $0 + $1 })
} else {
    for k in 0..<num1.count {
        for i in 0..<arr.count-1 {
            if arr[i] < arr[i+1] {
                arr[i] += num1[k]
                break
            } else if arr[i] == 0 {
                arr[i] += num1[k]
                break
            } else if i+1 == arr.count-1 {
                arr[i+1] += num1[k]
                break
            }
        }
    }
    
    print(arr.max()!)
}