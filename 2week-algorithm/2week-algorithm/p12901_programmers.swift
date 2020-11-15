//
//  p12901_programmers.swift
//  2week-algorithm
//
//  Created by 오킹 on 2020/11/15.
//

import Foundation

var firstDayOfWeekIndex: Int = 0
var dayOfWeek: Array<String> = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]

///입력받은 월(a)의 1일 요일인덱스(firstDayOfWeekIndex) 구하는 함수
func FirstDayOfWeek(_ a:Int, _ b:Int) {
    switch a {
    case 2:
        firstDayOfWeekIndex += 1
    case 1, 3, 5, 7, 8, 10 ,12:
        firstDayOfWeekIndex += 3
    default:
        firstDayOfWeekIndex += 2
    }
}

func p12901(_ a:Int, _ b:Int) -> String {
    
    for month in 1..<a {
        FirstDayOfWeek(month,b)
    }
    
    return dayOfWeek[(firstDayOfWeekIndex+b-1)%7]
}
