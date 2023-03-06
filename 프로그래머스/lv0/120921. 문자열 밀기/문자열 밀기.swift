import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var arr = Array(A)
    var answer = 0
    
    guard A != B else { return 0 }
    
    for i in 1...arr.count {
        arr.insert(arr.removeLast(), at: 0)

        if String(arr) == B {
            answer = i
            break
        }
    }
    
    return answer == 0 ? -1 : answer
}