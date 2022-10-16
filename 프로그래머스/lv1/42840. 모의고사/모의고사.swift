import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var student1 = Array(repeating: [1, 2, 3, 4, 5], count: answers.count).flatMap { $0 }
    var student2 = Array(repeating: [2, 1, 2, 3, 2, 4, 2, 5], count: answers.count).flatMap { $0 }
    var student3 = Array(repeating: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] , count: answers.count).flatMap { $0 }

    var score1: Int = 0
    var score2: Int = 0
    var score3: Int = 0
    
    checkScore(student: student1, answer: answers, score: &score1)
    checkScore(student: student2, answer: answers, score: &score2)
    checkScore(student: student3, answer: answers, score: &score3)
    
    var answer: [Int] = Array()
    //1이 가장 클때
    //2가 가장 클때
    //3이 가장 클때
    
    //1과2가 가장클때
    //1과3이 가장클때
    //2와3이 가장클때
    
    //1,2,3모두 같을때
    if score1 > score2 && score1 > score3 {
        answer.append(1)
    } else if score2 > score1 && score2 > score3 {
        answer.append(2)
    } else if score3 > score1 && score3 > score2 {
        answer.append(3)
    } else if score1 == score2 && score1 > score3 {
        answer.append(1)
        answer.append(2)
    } else if score1 == score3 && score3 > score2 {
        answer.append(1)
        answer.append(3)
    } else if score2 == score3 && score3 > score1 {
        answer.append(2)
        answer.append(3)
    } else if score1 == score2 && score2 == score3 {
        answer.append(1)
        answer.append(2)
        answer.append(3)
    }
    
    return answer
}

func checkScore(student: [Int], answer: [Int], score: inout Int) {
    for i in 0..<answer.count {
        score += student[i] == answer[i] ? 1 : 0
    }
}