//
//  2839.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/24.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2839() {
    let neededKg = Int(readLine()!)!
    var threeCount = 0
    var fiveCount = 0
    
    for fiveCnt in (0...(neededKg / 5)).reversed() {
        let divider = fiveCnt * 5
        let rest = neededKg - divider
        
        if rest % 3 == 0 {
            fiveCount = fiveCnt
            threeCount = rest / 3
            
            break
        }
    }
    
    let sum = threeCount + fiveCount
    if  sum == 0 {
        print(-1)
    } else {
        print(sum)
    }
}
