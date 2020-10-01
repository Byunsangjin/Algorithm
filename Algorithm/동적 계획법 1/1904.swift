//
//  1904.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/27.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1904() {
    let N = Int(readLine()!)!
    var fibo = Array(repeating: 0, count: 1000001)
    
    fibo[0] = 0
    fibo[1] = 1
    fibo[2] = 2
    
    for i in 0...N {
        if i < 3 {
            continue
        }
        
        fibo[i] = (fibo[i - 1] + fibo[i - 2]) % 15746
    }
    
    print(fibo[N])
}
