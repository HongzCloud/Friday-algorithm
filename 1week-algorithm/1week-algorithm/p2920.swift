//
//  p2920.swift
//  1week-algorithm
//
//  Created by 오킹 on 2020/11/06.
//

import Foundation

func p2920() {
    let input = readLine()
    let arrayNum = input?.components(separatedBy: " ")
    let arrayToString = arrayNum?.joined()
    
    switch arrayToString {
    case "12345678":
        print("ascending")
    case "87654321":
        print("ascending")
    default:
        print("mixed")
    }
}
