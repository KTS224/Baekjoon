import Foundation

@discardableResult
func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var today: Int = Int(today.filter { $0.isNumber })!
    var termsDict: [String: Int] = [:]
    var privaciesDate: [String] = []
    var privaciesType: [String] = []
    var answer: [Int] = []
    
    for item in terms.map({ $0.split(separator: " ") }) {
        termsDict[String(item[0])] = Int(item[1])
    }
    
    for privacy in privacies.map({ $0.split(separator: " ")}) {
        privaciesDate.append(String(privacy[0]))
        privaciesType.append(String(privacy[1]))
    }
    
    for i in 0..<privacies.count {
        for term in termsDict {
            if privaciesType[i] == term.key {
                var originValue = Int(privaciesDate[i].filter { $0.isNumber })!
                privaciesDate[i] = String(originValue + (term.value * 100 - 1))
                
                // print(term.value * 100)
                // print(privaciesDate[i])
                
                // 수가 너무 커서 년도가 바뀔경우 대비하기
                if Array(String(originValue))[2...3] != Array(String(privaciesDate[i]))[2...3] {
                    privaciesDate[i] = String(Int(privaciesDate[i])! + 10000 - 1200)
                }
                
                if privaciesDate[i].hasSuffix("00") {
                    privaciesDate[i] = String(Int(privaciesDate[i])! - 100 + 28)
                }
                
                while Int(String(Array(privaciesDate[i])[4...5]))! > 12 {
                    privaciesDate[i] = String(Int(privaciesDate[i])! + 10000 - 1200)
                }
                
                break
            }
        }
    }
    
    // print("TODAY: ", today)
    // print(privaciesDate)
    
    for i in 0..<privaciesDate.count {
        if Int(privaciesDate[i])! < today {
            answer.append(i+1)
        }
    }
    
    return answer
}
