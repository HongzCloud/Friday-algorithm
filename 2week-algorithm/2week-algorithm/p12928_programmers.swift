//
//  p12928_programmers.swift
//  2week-algorithm
//
//  Created by 오킹 on 2020/11/15.
//

import Foundation

func p12928(_ n:Int) -> Int {
    var measure: Array<Int> = [0]
 
    if n != 0 && n != 1 {
        for count in 1...n/2 {
            if n % count == 0 {
                measure.append(count)
            }
        }
    }
    measure.append(n)

    return measure.reduce(0,+)
}
