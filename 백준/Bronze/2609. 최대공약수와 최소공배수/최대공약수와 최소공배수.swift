import Foundation

let N = readLine()!.split(separator: " ").map { Int(String($0))! }
var a = N[0]
var b = N[1]
var 최대공약수 = 1
var k = 2

while k <= min(a, b) {
    if a % k == 0 && b % k == 0 {
        a /= k
        b /= k
        최대공약수 *= k
        k = 2
    } else {
        k += 1
    }
}

print(최대공약수)
print(N[0] * N [1] / 최대공약수)