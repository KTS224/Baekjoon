import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var choices = choices.map { $0 - 4 }
    var result: [String] = ["", "R", "", "T", "", "C", "", "F", "", "J", "", "M", "", "A", "", "N"]

    for (survey, score) in zip(survey, choices) {
        if score < 0 {
            result[result.index(before: result.firstIndex(of: String(survey.first ?? " ")) ?? 0)] += "\(abs(score)) "
        } else if score > 0 {
            result[result.index(before: result.firstIndex(of: String(survey.last ?? " ")) ?? 0)] += "\(abs(score)) "
        }
    }

    var score: [Int] = []
    for i in stride(from: 0, to: result.count, by: 2) {
        score.append(result[i].components(separatedBy: " ").reduce(0) { (Int($0) ?? 0) + (Int($1) ?? 0) })
    }

    var answer = ""
    for i in stride(from: 0, to: score.count, by: 2) {
        answer += score[i] >= score[i+1] ? result[i*2+1] : result[i*2+3]
    }
    return answer
}