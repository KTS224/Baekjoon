import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var x = dots[0][0] != dots[1][0] ? abs(dots[0][0]-dots[1][0]) : abs(dots[0][0]-dots[2][0])
    var y = dots[0][1] != dots[1][1] ? abs(dots[0][1]-dots[1][1]) : abs(dots[0][1]-dots[2][1])
    
    return x * y
}