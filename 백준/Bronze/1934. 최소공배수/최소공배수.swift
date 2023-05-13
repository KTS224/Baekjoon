import Foundation

let T = Int(readLine()!)!

for _ in 1...T {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    let A = input.first!
    let B = input.last!

    var gcd = 0

    for i in 1...A {
        if A % i == 0 && B % i == 0{
            gcd = i
        }
    }

    print(A * B / gcd)
}