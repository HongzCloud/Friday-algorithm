//
//  CompareTheTriplets_HackerRank.swift
//  3week-algorithm
//
//  Created by 오킹 on 2020/11/20.
//

import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var answer: Array<Int> = [ 0, 0 ]
for index in 0..<a.count {
    if a[index] > b[index] {
        answer[0] += 1
    }
    else if a[index] < b[index] {
        answer[1] += 1
    }
}
    return answer
}
