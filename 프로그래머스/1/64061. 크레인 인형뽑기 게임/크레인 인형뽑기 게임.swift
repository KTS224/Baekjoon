import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board = board
    var moves = moves
    var count = 0
    var basket: [Int] = []

    for move in moves {
        var j = move - 1
        
        for i in 0..<board.count {
            if board[i][j] != 0 {
                if !basket.isEmpty && basket.last! == board[i][j] {
                    count += 2
                    basket.removeLast()
                    
                } else {
                    basket.append(board[i][j])
                }
                
                board[i][j] = 0
                break
            }
        }
    }
    
    return count
}