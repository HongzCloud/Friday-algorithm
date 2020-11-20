//
//  p42840_programmers.swift
//  2week-algorithm
//
//  Created by 오킹 on 2020/11/13.
//

import Foundation

struct Student {
    var patten: [Int]
    var score: Int = 0
}

func p42840(_ answers:[Int]) -> [Int] {
    var pattenCount: Int = 0
    var students = [Student(patten: [1, 2, 3, 4, 5]),
                       Student(patten: [2, 1, 2, 3, 2, 4, 2, 5]),
                       Student(patten: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5])]
    var a = answers.enumerated()
    for studentNumbers in 0..<students.count {
        for answersCount in 0..<answers.count {
            if answers[answersCount] == students[studentNumbers].patten[pattenCount] {
                students[studentNumbers].score += 1
            }
            pattenCount += 1
            
            if pattenCount == students[studentNumbers].patten.count {
                pattenCount = 0
            }
        }
        pattenCount = 0
    }
    
    let maxScore = students.max(by: { $0.score < $1.score })?.score ?? 0
    let scoreIndexPlusOne = students.indices.filter({students[$0].score == maxScore}).map({$0 + 1})

    return scoreIndexPlusOne
}
