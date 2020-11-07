//
//  p1000.swift
//  1week-algorithm
//
//  Created by 오킹 on 2020/11/06.
//

import Foundation

func p1000() {
    let line = readLine() ?? ""
    let lineArr = line.split{$0 == " "}
    let a = Int(lineArr[0]) ?? 0
    let b = Int(lineArr[1]) ?? 0
    print(a+b)
}
