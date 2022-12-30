import Foundation

func solution(_ s:String) -> Int {
    var arr: [String] = []

    for char in s {
        arr.append(String(char))
        if arr.count >= 2 && arr[arr.count-2] == arr[arr.count-1] {
            arr.removeLast()
            arr.removeLast()
        }
    }
    return arr.count == 0 ? 1 : 0
}
