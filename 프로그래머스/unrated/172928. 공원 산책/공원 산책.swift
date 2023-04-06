import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    var arr: [[String]] = []
    var initLocation: [Int] = []
    
    for ar in park {
        var tempArr: [String] = []
        tempArr = ar.map { String($0) }
        arr.append(tempArr)
    }
    
    for i in 0..<arr.count {
        let temp = arr[i].firstIndex(of: "S")
        
        if temp != nil {
            initLocation.append(i)
            initLocation.append(temp!)
        }
    }
    
    for i in 0..<routes.count {
        let num = Int(String(routes[i].last!))!
        let tempLast = initLocation.last!
        let tempFirst = initLocation.first!
        
        switch routes[i].first! {
        case "N":
            guard initLocation[0] - num >= 0 else { continue }
            var temp = 0
            for k in 0..<num {
                guard arr[tempFirst - k - 1][tempLast] != "X" else {
                    temp = 0
                    break
                }
                temp += 1
            }
            initLocation[0] += -1 * temp
        case "S":
            guard initLocation[0] + num < park.count else { continue }
            var temp = 0
            for k in 0..<num {
                guard arr[tempFirst + k + 1][tempLast] != "X" else {
                    temp = 0
                    break
                }
                temp += 1
            }
            initLocation[0] += temp
        case "W":
            guard initLocation[1] - num >= 0 else { continue }
            var temp = 0
            for k in 0..<num {
                guard arr[tempFirst][tempLast - k - 1] != "X" else {
                    temp = 0
                    break
                }
                temp += 1
            }
            initLocation[1] += -1 * temp
        case "E":
            guard num + initLocation[1] < arr[0].count else { continue }
            var temp = 0
            for k in 0..<num {
                guard arr[tempFirst][tempLast + k + 1] != "X" else {
                    temp = 0
                    break
                }
                temp += 1
            }
            initLocation[1] += temp
        default:
            print("default")
        }
    }
    
    return initLocation
}