import Foundation

var N = Int(readLine()!)!
var answer = 1
var count = 1
var k = 1
var i = 1

repeat {
    answer += 6 * k
    i += 1
    k += i
} while N > (k*6) + 1

print( N == 1 ? "1" : N <= 7 ? "\(i)" : "\(i+1)")