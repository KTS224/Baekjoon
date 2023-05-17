import Foundation

var n = Int(readLine()!)!
solution(n)

func solution(_ n: Int) {
    let input = n
    var sum = 0
    var i = 0

    while sum <= input {
        i += 1
        sum += i
    }

    print(i < 2 ? i : i-1)
}