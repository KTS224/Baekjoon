import Foundation

let countInput = Int(readLine()!)!
for i in 1 ... countInput {
    let numberInput = readLine()!.components(separatedBy: " ")
    print("Case #\(i): \(Int(numberInput[0])! + Int(numberInput[1])!)")
}