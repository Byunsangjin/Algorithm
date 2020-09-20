//
//  2108.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/20.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2108() {
    let N = Int(readLine()!)!
    var inputArr = [Int]()

    for _ in 0..<N {
        inputArr.append(Int(readLine()!)!)
    }
    
    inputArr.sort()
    
    // 산술평균
    print(Int(round(Double(inputArr.reduce(0, +)) / Double(inputArr.count))))
    
    // 중앙값
    print(inputArr[inputArr.count/2])
    
    // 최빈값
    // -4000 => index 0, 0 => index 4000
    var dp = Array(repeating: 0, count: 8002)
    inputArr.forEach {
        dp[4000 + $0] += 1
    }
    
    let maxCount = dp.max()!
    if dp.firstIndex(of: maxCount) == dp.lastIndex(of: maxCount) {
        print(dp.firstIndex(of: maxCount)! - 4000)
    } else {
        dp[dp.firstIndex(of: maxCount)!] = 0
        print(dp.firstIndex(of: maxCount)! - 4000)
    }
    
    // 범위
    print(inputArr.max()! - inputArr.min()!)
}
