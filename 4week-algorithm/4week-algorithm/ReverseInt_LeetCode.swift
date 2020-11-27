//
//  ReverseInt_LeetCode.swift
//  4week-algorithm
//
//  Created by 오킹 on 2020/11/27.
//

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        let strX: String = String(x)
        var arrX: Array<Character> = Array(strX)
        let max = 2147483647
        let min = -2147483648
        var answer: Int

        if arrX[0] == "-" {
            arrX.removeFirst()
            arrX.reverse()
            arrX.insert("-", at: 0)
            answer = Int(arrX.reduce("", { String($0)+String($1) }))!
            
            return answer > max || answer < min ? 0 : answer
        }
        arrX.reverse()
        answer = Int(arrX.reduce("", { String($0)+String($1) }))!
        
        return answer > max || answer < min ? 0 : answer
    }
}
