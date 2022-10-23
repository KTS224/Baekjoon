import Foundation

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    var denum3: Int = (denum1 * num2) + (denum2 * num1)
    var num3: Int = num1 * num2
    
    abbreviate(denum: &denum3, num: &num3)
    return [denum3, num3]
}

func abbreviate(denum: inout Int, num: inout Int) {
    guard denum != 1 && num != 1 else {
        return
    }
    
    let largeNum: Int = denum > num ? denum : num
    
    for i in 2...denum {
        if denum % i == 0 && num % i == 0 {
            denum /= i
            num /= i
            abbreviate(denum: &denum, num: &num)
        }
    }
}