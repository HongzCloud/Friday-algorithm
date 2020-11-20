//
//  GradingStudent_HackerRank.swift
//  3week-algorithm
//
//  Created by 오킹 on 2020/11/20.
//

import Foundation

/*
 * Complete the 'gradingStudents' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY grades as parameter.
 */

func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here
return grades.map{ (5-($0%5)) < 3 && $0 >= 35 ? $0+(5-($0%5)) : $0}
}
