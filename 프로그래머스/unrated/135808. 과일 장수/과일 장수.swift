import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var score = score.sorted(by: >)
    var boxes: [String] = []
    var price = 0
    
    var count = 0
    var str = ""
    score.forEach { num in
        str += String(num)
        count += 1
        
        if count == m {
            boxes.append(str)
            count = 0
            str = ""
        }
    }
    
    
    boxes.forEach { box in
        price += box.count * Int(String(box.last!))!
    }
    
    return price
}