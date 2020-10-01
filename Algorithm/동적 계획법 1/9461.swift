//
//  9461.swift
//  Algorithm
//
//  Created by sjbyun on 2020/10/01.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_9461() {
    let T = Int(readLine()!)!
    var dp = Array(repeating: 0, count: 101)
    dp[0] = 1
    dp[1] = 1
    dp[2] = 1
    dp[3] = 2
    dp[4] = 2
    
    for i in 5...100 {
        dp[i] = dp[i - 1] + dp[i - 5]
    }
    
    for _ in 0..<T {
        let N = Int(readLine()!)!
        
        print(dp[N - 1])
    }
}

run_9461()
