func solution(_ dartResult:String) -> Int {
    // -MARK: 숫자와 문자로 나누기
    var a: [String] = []
    var ttemp = ""

    for i in dartResult {
        var i = String(i)
        
        if i == "S" || i == "D" || i == "T" || i == "*" || i == "#" {
            if Int(ttemp) ?? -1 >= 0 {
                a.append(ttemp)
                ttemp = ""
            }
            a.append(i)
        } else {
            ttemp += i
        }
    }
    
    var temp = 0
    var numbers: [Int] = [0]
    var bonus: [Int] = [1, 1, 1, 1]
    var count = 0

    for char in a {
        var char = String(char)
        
        if char == "*" {
            bonus[count] *= 2
            bonus[count-1] *= 2
        } else if char == "#" {
            bonus[count] *= -1
        }
        
        if let num = Int(char) {
            temp = num
        }
        
        if char == "S" {
            temp = temp * 1
            numbers.append(temp)
            count += 1
        } else if char == "D" {
            temp = temp * temp
            numbers.append(temp)
            count += 1
        } else if char == "T" {
            temp = temp * temp * temp
            numbers.append(temp)
            count += 1
        }
    }

    var answer = 0

    for i in 1...3 {
        answer += numbers[i] * bonus[i]
    }
    
    return answer
}