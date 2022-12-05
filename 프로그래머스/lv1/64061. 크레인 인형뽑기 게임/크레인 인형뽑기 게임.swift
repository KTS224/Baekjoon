import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board = board
    var storage: [Int] = []
    var count = 0

    for i in moves {
        for j in 0..<board.count {
            if board[j][i-1] != 0 {
                storage.append(board[j][i-1])
                board[j][i-1] = 0
                break
            }
        }
    }

    for _ in storage {
        for i in 0..<storage.count {
            if storage.count < 2 {
                break
            }

            if storage[i] == storage[i+1] { // 여기가 문제?
                storage.removeSubrange(i...i+1)
                count += 2
            }

            if i >= storage.count - 2 {
                break
            }
        }
    }
    
    return count
}