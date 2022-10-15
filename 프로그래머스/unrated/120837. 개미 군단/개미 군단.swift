import Foundation

func solution(_ hp:Int) -> Int {
    var hp = hp
    var damage5: Int = 0
    var damage3: Int = 0
    var damage1: Int = 0
    var sum: Int = 0

    while hp != 0 {
        if hp - 5 >= 0 {
            hp -= 5
            damage5 += 1
        } else if hp - 3 >= 0 {
            hp -= 3
            damage3 += 1
        } else {
            hp -= 1
            damage1 += 1
        }
    }
    
    sum = damage5 + damage3 + damage1
    
    return sum
}