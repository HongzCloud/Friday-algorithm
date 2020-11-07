//
//  p2438.swift
//  1week-algorithm
//
//  Created by 오킹 on 2020/11/06.
//

import Foundation

func p2438() {
    let a  = Int(readLine()!)!
    
    for n in 0...a {
        for _ in 0..<n {
            print("*", separator: "", terminator: "")
        }
        if n != 0 {
            print()
        }
    }
}
