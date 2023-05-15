import Foundation

let N = Int(readLine()!)!

for i in 2...1234567890 {
    if (i-1)*(i-1)-1 <= N && N <= i*i-1 {
        print(i-1)
        break
    }
}