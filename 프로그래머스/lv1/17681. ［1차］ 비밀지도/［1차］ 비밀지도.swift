func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    var arr1ToBinary: [String] = []
    var arr2ToBinary: [String] = []

    for num in arr1 {
        arr1ToBinary.append(String(num, radix: 2))
    }

    for num in arr2 {
        arr2ToBinary.append(String(num, radix: 2))
    }
    
    for i in 0..<arr1ToBinary.count {
        while arr1ToBinary[i].count < n {
            arr1ToBinary[i] = "0" + arr1ToBinary[i]
        }
        
        while arr2ToBinary[i].count < n {
            arr2ToBinary[i] = "0" + arr2ToBinary[i]
        }
    }
    
    var str1 = ""
    var str2 = ""

    for s in arr1ToBinary {
        str1 += s
    }

    for s in arr2ToBinary {
        str2 += s
    }
    
    var count = 0
    var temp = ""

    for _ in str1 {
        if count != 0 && count % n == 0 {
            answer.append(temp)
            temp = ""
        }
        
        if str1.first == "1" || str2.first == "1" {
            temp += "#"
        } else {
            temp += " "
        }
        
        str1.removeFirst()
        str2.removeFirst()
        count += 1
    }

    answer.append(temp)
    return answer
}