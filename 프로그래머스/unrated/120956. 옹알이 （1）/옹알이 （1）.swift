import Foundation

let babs = ["aya", "ye", "woo", "ma"]

func solution(_ babbling:[String]) -> Int {
    func removeArr(_ arr: inout [Character], _ num: Int, _ isDuplicated: inout [Bool], _ n: Int) {
        for _ in 1...num {
            arr.removeLast()
        }
        isDuplicated[n] = true
    }
    
    var babblings = Array(babbling)
    var answer = 0
    
    for babbling in babblings {
        var arr = Array(babbling)
        var isDuplicateds = [false, false, false, false]
        var exit = 0
        
        while true {
            exit = arr.count
            guard exit >= 2 else { break }
            
            var i = arr.count-1
            
            if exit >= 3 && !isDuplicateds[0] && arr[i] == "a" && arr[i-1] == "y" && arr[i-2] == "a" {
                removeArr(&arr, 3, &isDuplicateds, 0)
            } else if !isDuplicateds[1] && arr[i] == "e" && arr[i-1] == "y" {
                removeArr(&arr, 2, &isDuplicateds, 1)
            } else if exit >= 3 && !isDuplicateds[2] && arr[i] == "o" && arr[i-1] == "o" && arr[i-2] == "w" {
                removeArr(&arr, 3, &isDuplicateds, 2)
            } else if !isDuplicateds[3] && arr[i] == "a" && arr[i-1] == "m" {
                removeArr(&arr, 2, &isDuplicateds, 3)
            }
            
            if arr.isEmpty {
                answer += 1
                break
            }
            
            var innerExit = arr.count
            guard innerExit != exit else { break }
        }
    }
    
    return answer
}