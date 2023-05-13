import Foundation

struct Student {
    let name: String
    let year: String
    let month: String
    let day: String
    var bornDate: Int {
        Int(year + month + day)!
    }
}

var students: [Student] = []
let n = Int(readLine()!)!

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map{String($0)}

    students.append(Student(name: input[0], year: input[3], month: input[2].count == 1 ? ("0" + input[2]) : input[2], day: input[1].count == 1 ? ("0" + input[1]) : input[1]))
}

var minName = students.first!.name
var maxName = students.first!.name
var min = Int(exactly: students.first!.bornDate)!
var max = Int(exactly: students.first!.bornDate)!

for student in students {
    if Int(exactly: student.bornDate)! < min {
        min = student.bornDate
        minName = student.name
    } else if Int(exactly: student.bornDate)! > max {
        max = student.bornDate
        maxName = student.name
    }
}

print(maxName)
print(minName)