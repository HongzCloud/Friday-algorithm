//
//  NumberLineJump_HackerRank.swift
//  3week-algorithm
//
//  Created by 오킹 on 2020/11/20.
//

import Foundation

// Complete the kangaroo function below.
func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    let x : Double = -(Double(x2-x1)/Double(v2-v1))
    
    return  x.truncatingRemainder(dividingBy: 1) == 0 && x > 0 ? "YES" : "NO"
}
