import Foundation

func solution(_ sides:[Int]) -> Int {
    var sides = sides
    var largest = sides.remove(at: sides.firstIndex(of: sides.max()!)!)
    
    if largest < sides.max()! + sides.min()! {
        return 1
    }
    
    return 2
}