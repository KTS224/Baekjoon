import Foundation

func solution(_ board:[[Int]]) -> Int {
    guard !(board.count == 1 && board[0] == [0]) else { return 1 }
    guard !(board.count == 1) else { return 0 }
    
    var innerBoard = board
    let xs = [-1, -1, -1, 0, 0, 1, 1, 1]
    let ys = [-1, 0, 1, -1, 1, -1, 0, 1]
    
    for i in 0..<board.count {
        for k in 0..<board.count {
            if board[i][k] == 1 {
                for p in 0..<xs.count {
                    if i+xs[p] >= 0 && k+ys[p] >= 0 && i+xs[p] < board.count && k+ys[p] < board.count {
                        innerBoard[i+xs[p]][k+ys[p]] = 2
                    }
                }
            }
        }
    }
    
    var count = 0
    
    for ib in innerBoard {
        for i in ib {
            if i == 0 {
                count += 1
            }
        }
    }
    
    return count
}