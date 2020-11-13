//
//  p12910_programmers.swift
//  2week-algorithm
//
//  Created by 오킹 on 2020/11/13.
//

import Foundation

func p12910(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    var answer = arr.filter({ $0 % divisor == 0 }).sorted()
    
    return answer == [] ? [-1] : answer
}
