import Foundation

func solution(_ price: Int, _ money: Int, _ count: Int) -> Int {
    var sumOfPrice: Int = 0
    var money: Int = money
    
    for index in 1...count {
        sumOfPrice += price*index
    }
    
    money -= sumOfPrice
    
    if money >= 0 {
        return 0
    } else {
        return -money
    }
}