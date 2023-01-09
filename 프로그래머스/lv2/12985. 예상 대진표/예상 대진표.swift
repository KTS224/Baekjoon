import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    if n == 2 {
        return 1
    }
    
    var arr: [String] = Array(repeating: "x", count: n)
    arr[a-1] = "A"
    arr[b-1] = "A"
    
    var temp: [String] = []
    var count = 1
    
    count += 1
    for i in stride(from: 0, to: arr.count, by: 2) {
        
        if arr[i] == "A" && arr[i+1] == "A" {
            return count - 1
        } else if arr[i...i+1].contains("A") {
            temp.append("A")
        } else {
            temp.append("x")
        }
    }

    while temp.count != 2 {
        count += 1
        for i in stride(from: 0, to: temp.count, by: 2) { // 0 , 2
            if temp[i] == "A" && temp[i+1] == "A" {
                return count - 1
            } else if temp[i...i+1].contains("A") {
                temp[i] = "A"
                temp[i+1] = "0"
            } else {
                temp[i] = "x"
                temp[i+1] = "0"
            }
        }
    temp = temp.filter { $0 != "0" }
    }

    return count
}