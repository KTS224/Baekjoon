import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var choices = choices.map { $0 - 4 } // 초이스를 점수화한다
    var result: [[String]] = [[""], ["R"], [""], ["T"], [""], ["C"], [""], ["F"], [""], ["J"], [""], ["M"], [""], ["A"], [""], ["N"]]

    for (survey, score) in zip(survey, choices) {
        if score < 0 {
            result[result.index(before: result.firstIndex(of: [String(survey.first ?? " ")]) ?? 0)][0] += "\(abs(score)) "
        } else if score > 0 {
            result[result.index(before: result.firstIndex(of: [String(survey.last ?? " ")]) ?? 0)][0] += "\(abs(score)) "
        }
    }

    var score: [Int] = []

    for i in stride(from: 0, to: result.count, by: 2) {
        var temp = 0
        temp = result[i][0].components(separatedBy: " ").reduce(0) { (Int($0) ?? 0) + (Int($1) ?? 0) }
        score.append(temp)
    }

    var answer = ""

    for i in stride(from: 0, to: score.count, by: 2) {
        print("\(answer) += \(score[i]) >= \(score[i+1]) ? \(result[i*2+1][0]) : \(result[i*2+3][0])")
        answer += score[i] >= score[i+1] ? result[i*2+1][0] : result[i*2+3][0]
    }
    
    return answer
}