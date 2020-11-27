//
//  main.swift
//  4week-algorithm
//
//  Created by 오킹 on 2020/11/27.
//

import Foundation

//MARK:- 1번문제
let twoSumTest = TwoSum()
print("1번문제")
print(twoSumTest.twoSum([0,4,3,0], 0))
print(twoSumTest.twoSum([-1,-2,-3,-4,-5], -8))

//MARK:- 2번문제
let reverseManager = ReverseInt()
print("2번문제")
print(reverseManager.reverse(-120))
print(reverseManager.reverse(1534236469))

//MARK:- 3번문제
let palindrome = Palindrome()
print("3번문제")
print(palindrome.isPalindrome(121) == true ? "PASS":"FAILED")
print(palindrome.isPalindrome(-121) == false ? "PASS":"FAILED")
print(palindrome.isPalindrome(10) == false ? "PASS":"FAILED")
print(palindrome.isPalindrome(-101) == false ? "PASS":"FAILED")
print(palindrome.isPalindrome(0) == true ? "PASS":"FAILED")

//MARK:- 3번문제
