import Foundation

func solution(_ common:[Int]) -> Int {
    var 등비수열인가 = false
    var 등차수열인가 = false
    
    let a = common[1] - common[0]
    let b = common[2] - common[1]
    
    a == b ? 등비수열인가.toggle() : 등차수열인가.toggle()
    
    return 등비수열인가 ? common.last! + b : common.last! * common[2] / common[1]
}
