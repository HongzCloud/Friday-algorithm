//
//  p8958.swift
//  1week-algorithm
//
//  Created by 오킹 on 2020/11/06.
//

import Foundation

//OOXXOX 를 받아서 X를 기준으로 X 빼고 배열을 만든후 O문자의 갯수를 파악 후 계산
//ex - ["O","","OO","","","O"] -> 1+ 0 + 1 + 2 + 0 + 0 + 1
func p8958() {
    let input: String = readLine()!
    var oNumArray : [Int] = []
    let arrayNum = input.components(separatedBy: "X")
    var answer = 0
    
    for oString in arrayNum {
        for count in 0..<oString.count {
            answer += count + 1
            oNumArray.append(oString.count)
        }
    }
    print(answer)
}
