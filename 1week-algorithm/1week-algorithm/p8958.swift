//
//  p8958.swift
//  1week-algorithm
//
//  Created by 오킹 on 2020/11/06.
//

import Foundation

//
//ex - ["O","","OO","","","O"] -> 1+ 0 + 1 + 2 + 0 + 0 + 1
func p8958() {
    //계산식
    func fibo(_ n: Int) -> Int {
         if n == 1 {
             return 1
         }
         return fibo(n-1)+n
     }
     //반복 입력받을 수
     let inputN = Int(readLine() ?? "") ?? 0
    
     //OOXXOX 를 받아서 X를 기준으로 X 빼고 배열을 만든후 compact로 "" 인덱스 제거, O문자의 갯수를 파악 후 fibo 계산
     for _ in 0..<inputN {
         let line = readLine() ?? ""
         print(line.split{ $0 == "X" }.compactMap { fibo($0.count) }.reduce(0, +))
     }
}
