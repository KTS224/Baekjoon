import Foundation

func solution(_ s:String) -> Bool {
    var uppercasedS: String = s.uppercased()
    var pCount: Int = 0
    var yCount: Int = 0
    
    for _ in uppercasedS { //for 문 범위가 s 일경우 왜 런타임오류일까
        pCount += (uppercasedS.first == "P") ? 1 : 0
        yCount += (uppercasedS.first == "Y") ? 1 : 0
        uppercasedS.removeFirst()
    }
    
    return pCount == yCount ? true : false
}
