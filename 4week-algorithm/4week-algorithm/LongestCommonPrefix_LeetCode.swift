//
//  LongestCommonPrefix_LeetCode.swift
//  4week-algorithm
//
//  Created by 오킹 on 2020/11/29.
//

import Foundation

class LongestCommonPrefixManager {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var newStrsCharArr = [[Character]]()
        var checkNum = 0
        var out = ""
        
        if strs.contains("") || strs.isEmpty == true {
            return out
        }
        
        var minRePeatNum: Int = strs[0].count
        
       
        //strs [[Character]] 로 만들기
        for index in 0..<strs.count {
            newStrsCharArr.append(Array(strs[index]))
            if minRePeatNum > strs[index].count {
                minRePeatNum = strs[index].count
            }
        }
        
        //2차원배열 안에서 첫번째 열을 기준으로 한 열씩 비교
        for column in 0..<minRePeatNum {
            for row in 1..<newStrsCharArr.count {
                if newStrsCharArr[0][column] == newStrsCharArr[row][column] {
                    checkNum += 1
                }
                else {
                    return out
                }
                
                if checkNum == strs.count-1 {
                    out += String(newStrsCharArr[row][column])
                }
            }
            checkNum = 0
        }
        return strs.count == 1 ? strs[0] : out
    }
}

