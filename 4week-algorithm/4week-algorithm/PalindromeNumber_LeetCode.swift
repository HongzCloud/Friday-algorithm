//
//  PalindroneNumber_LeetCode.swift
//  4week-algorithm
//
//  Created by 오킹 on 2020/11/27.
//

import Foundation

class Palindrome {
    func isPalindrome(_ x: Int) -> Bool {
        var myX = x
        var remainder: Int = 0
        var reverseNum: Int = 0
  
        if x == 0 { return true }
        if x < 0 || x % 10 == 0 { return false }
        
        while myX != 0 {
            remainder = myX % 10
            reverseNum = reverseNum * 10 + remainder
            myX /= 10
        }

        return x == reverseNum
    }
}
