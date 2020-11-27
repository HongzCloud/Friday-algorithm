//
//  twoSum_LeetCode.swift
//  4week-algorithm
//
//  Created by 오킹 on 2020/11/27.
//

import Foundation

class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        for one in 0..<nums.count-1 {
            for another in (one+1)..<nums.count {
                if nums[one] + nums[another] == target {
                    return [one,another]
                }
            }
        }
        return [0]
    }
}
