import Foundation

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    var denum1: Int = denum1
    var denum2: Int = denum2
    var num1: Int = num1
    var num2: Int = num2
    var temp: Int = 1
    var denum3: Int = 0
    var num3: Int = 0
    
    denum1 = denum1 * num2
    denum2 = denum2 * num1
    denum3 = denum1 + denum2
    num3 = temp * num1 * num2
    nnn(num1: &denum3, num2: &num3, temp: &temp)
    return [denum3, num3]
}

func nnn(num1: inout Int, num2: inout Int, temp: inout Int) {
//    if num1 == 1 && num2 == 1 {
//        return 0
//    }
    
    guard num1 != 1 && num2 != 1 else {
        return
    }
    
    let largeNum: Int = num1 > num2 ? num1 : num2
    
    for i in 2...largeNum {
        if num1 % i == 0 && num2 % i == 0 {
            num1 /= i
            num2 /= i
            temp *= i
            nnn(num1: &num1, num2: &num2, temp: &temp)
        }
    }
//    return 0
}