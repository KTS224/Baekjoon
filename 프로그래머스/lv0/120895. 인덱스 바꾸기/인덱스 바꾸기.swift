import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var arr = Array(my_string)
    var temp = arr[num1]
    arr[num1] = arr[num2]
    arr[num2] = temp
    return String(arr)
}