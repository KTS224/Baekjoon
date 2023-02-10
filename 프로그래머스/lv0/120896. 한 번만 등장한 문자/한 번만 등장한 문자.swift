import Foundation

func solution(_ s:String) -> String {
    let arr = Array(s)
    var tempArr: [Character] = []
    
    for i in 0..<arr.count {
        var count = 0
        
        for char in arr {
            if char == arr[i] {
                count += 1
            }
            
            if count > 1 {
                tempArr.append(arr[i])
                break
            }
        }
    }
    
    let set = Set(s)

    return String(set.filter { !Set(tempArr).contains($0) }.sorted())
}