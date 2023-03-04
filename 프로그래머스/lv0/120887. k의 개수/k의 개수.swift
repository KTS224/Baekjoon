import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var result = 0
    for n in i...j {
        "\(n)".forEach { char in
            if "\(char)" == "\(k)" {
                result += 1
            }
        }
    }
    return result
}