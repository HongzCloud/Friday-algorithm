//
//  TimeConversion_HackerRank.swift
//  3week-algorithm
//
//  Created by 오킹 on 2020/11/20.
//

import Foundation
func timeConversion(test: String) -> String {
    let inputFormatter = DateFormatter()
    let outputFormatter = DateFormatter()
    
    inputFormatter.dateFormat = "hh:mm:ssa"
    outputFormatter.dateFormat = "HH:mm:ss"
    
    //String -> Date 할때 시간이 +0300 되는데 TimeZone을 +0000으로해주면 안바뀐다. UTC와 관련있을 것으로 추정
    let convertToDate = inputFormatter.date(from: test)!
   
    return outputFormatter.string(from: convertToDate)
}
