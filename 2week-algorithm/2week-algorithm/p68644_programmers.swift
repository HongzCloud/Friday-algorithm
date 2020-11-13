//
//  p68644_programmers.swift
//  2week-algorithm
//
//  Created by 오킹 on 2020/11/13.
//

import Foundation

func p68644(_ numbers:[Int]) -> [Int] {
    var deduplication = Set<Int>()
    
    for standardNum in 0..<numbers.count {
        for standardNumRight in standardNum+1..<numbers.count {
            deduplication.insert( numbers[standardNum] + numbers[standardNumRight])
        }
    }
    let answer = Array(deduplication.sorted())
    
    return answer
}


