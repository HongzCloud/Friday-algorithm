//
//  p64061_programmers.swift
//  2week-algorithm
//
//  Created by 오킹 on 2020/11/13.
//

import Foundation

func p64061(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var tempBoard = board
    var shoppingCart : [Int] = []
    var removeNum = 0

    movesLoof: for column in 0..<moves.count {
        rowLoof: for row in 0..<board[0].count {
            if tempBoard[row][moves[column]-1] != 0 {
                if shoppingCart.last ?? 0 == tempBoard[row][moves[column]-1] {
                    shoppingCart.removeLast()
                    tempBoard[row][moves[column]-1] = 0
                    removeNum += 2
                    continue movesLoof
                }
                else {
                    shoppingCart.append(tempBoard[row][moves[column]-1])
                    tempBoard[row][moves[column]-1] = 0
                    continue movesLoof
                }
            }
        }
    }
    return removeNum
}
