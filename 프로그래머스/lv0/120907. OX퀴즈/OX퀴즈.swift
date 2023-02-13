import Foundation

func solution(_ quiz:[String]) -> [String] {
    var answer: [String] = []
    for q in quiz {
        var temp = q.components(separatedBy: " ")
        answer.append(checkCalculationIsTrue(num1: Int(temp[0])!, sign: temp[1], num2: Int(temp[2])!, answer: Int(temp[4])!))
    }
    return answer
}

func checkCalculationIsTrue(num1: Int, sign: String, num2: Int, answer: Int) -> String {
    var temp: String = "X"
    
    switch sign {
    case "+":
        if num1 + num2 == answer {
            temp = "O"
        }
    case "-":
        if num1 - num2 == answer {
            temp = "O"
        }
    default:
        break
    }
    return temp
}