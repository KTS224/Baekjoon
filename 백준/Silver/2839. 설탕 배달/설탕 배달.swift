var num = Int(readLine()!)!
var count = 0

for i in stride(from: num / 5, through: 0, by: -1) {
    if (num - (5 * i)) % 3 == 0 {
        count += i
        count += (num - (5 * i)) / 3
        break
    }
}

print(count == 0 ? -1 : count)