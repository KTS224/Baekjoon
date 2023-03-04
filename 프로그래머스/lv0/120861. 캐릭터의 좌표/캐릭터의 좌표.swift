import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    let maxX = board[0] / 2
    let nMaxX = -1 * maxX
    let maxY = board[1] / 2
    let nMaxY = -1 * maxY
    var location: [Int] = [0, 0]

    keyinput.forEach { direction in
        if direction == "left" {
            location[0] -= 1
            if location[0] < nMaxX {
                location[0] += 1
            }
        } else if direction == "right" {
            location[0] += 1
            if location[0] > maxX {
                location[0] -= 1
            }
        } else if direction == "down" {
            location[1] -= 1
            if location[1] < nMaxY {
                location[1] += 1
            }
        } else if direction == "up" {
            location[1] += 1
            if location[1] > maxY {
                location[1] -= 1
            }
        }
    }
    
    return location
}