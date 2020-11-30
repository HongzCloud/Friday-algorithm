//
//  main.swift
//  4week-algorithm
//
//  Created by 오킹 on 2020/11/27.
//

import Foundation

//MARK:- 1번문제
//let twoSumTest = TwoSum()
//print("1번문제")
//print(twoSumTest.twoSum([0,4,3,0], 0))
//print(twoSumTest.twoSum([-1,-2,-3,-4,-5], -8))
//
////MARK:- 2번문제
//let reverseManager = ReverseInt()
//print("2번문제")
//print(reverseManager.reverse(-120))
//print(reverseManager.reverse(1534236469))
//
////MARK:- 3번문제
//let palindrome = Palindrome()
//print("3번문제")
//print(palindrome.isPalindrome(121) == true ? "PASS":"FAILED")
//print(palindrome.isPalindrome(-121) == false ? "PASS":"FAILED")
//print(palindrome.isPalindrome(10) == false ? "PASS":"FAILED")
//print(palindrome.isPalindrome(-101) == false ? "PASS":"FAILED")
//print(palindrome.isPalindrome(0) == true ? "PASS":"FAILED")
//
////MARK:- 3번문제
//let romanManager = RomanManager()
//print("4번문제")
//print(romanManager.romanToInt("IV") == 4 ? "PASS":"FAILED")
//print(romanManager.romanToInt("IX") == 9 ? "PASS":"FAILED")
//print(romanManager.romanToInt("LVIII") == 58 ? "PASS":"FAILED" )
//print(romanManager.romanToInt("III") == 3 ? "PASS":"FAILED")
//
////MARK:- 4번문제
//let CommonPrefixManager = LongestCommonPrefixManager()
//print(CommonPrefixManager.longestCommonPrefix(["flower", "flow", "flight"]) == "fl" ? "PASS":"FAILED")
//print(CommonPrefixManager.longestCommonPrefix(["a"]) == "a" ? "PASS":"FAILED")
//print(CommonPrefixManager.longestCommonPrefix(["",""]) == "" ? "PASS":"FAILED")
//print(CommonPrefixManager.longestCommonPrefix(["a","ab"]) == "a" ? "PASS":"FAILED")
//print(CommonPrefixManager.longestCommonPrefix([]) == "" ? "PASS":"FAILED")

let testListNode1 = ListNode()
let testListNode2 = ListNode()
let testListNode3 = ListNode()
testListNode1.val = 1
testListNode2.val = 2
testListNode3.val = 3
testListNode1.next = testListNode2
testListNode2.next = testListNode3
let l2_1 = ListNode()
let l2_2 = ListNode()
let l2_3 = ListNode()
l2_1.val = 1
l2_2.val = 3
l2_3.val = 4
l2_1.next = l2_2
l2_2.next = l2_3

let mergeManager = MergeTwoStoredListManager()
print(mergeManager.mergeTwoLists(testListNode1, l2_1))
