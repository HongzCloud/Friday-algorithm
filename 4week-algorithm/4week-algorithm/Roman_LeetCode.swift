//
//  Roman_LeetCode.swift
//  4week-algorithm
//
//  Created by 오킹 on 2020/11/27.
//

import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        let romanTuple: [(Character, Int)] = [("M",1000), ("D",500), ("C",100), ("L",50),  ("X",10), ("V",5), ("I",1)]
        let sArr = Array(s)
        var out: [Int] = []

        
        for romanChar in sArr {
            for i in 0..<romanTuple.count {
                if romanChar == romanTuple[i].0 {
                    out.append(romanTuple[i].1)
                }
            }
        }
        
        for i in 1..<out.count {
            if out[i-1] < out[i] {
                out[i-1] = -out[i-1]
            }
        }
        
        return out.reduce(0, +)
    }
}
