import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    let answer = Array(String(num)).firstIndex(of: String(k).first!) ?? -1
    return answer == -1 ? -1 : answer + 1
}