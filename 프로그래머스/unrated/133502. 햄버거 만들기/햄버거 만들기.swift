import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var ingredient = ingredient
    var count = 0
    var k = 0
    
    while k < ingredient.count-3 {
        if ingredient[k] == 1 && ingredient[k+1] == 2 && ingredient[k+2] == 3 && ingredient[k+3] == 1 {
            ingredient.removeSubrange(k...k+3)
            count += 1
            if k < 2 {
                k = 0
            } else {
                k = k-2
            }
        } else {
            k += 1
        }
    }
    
    return count
}
