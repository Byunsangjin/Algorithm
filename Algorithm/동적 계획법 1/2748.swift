//
//  2748.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/27.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2748() {
    let N = Int(readLine()!)!
    var fibo = Array(repeating: 0, count: 91)
    
    fibo[0] = 0
    fibo[1] = 1
    
    for i in 0...N {
        if i < 2 {
            continue
        }
        
        fibo[i] = fibo[i - 1] + fibo[i - 2]
    }
    
    print(fibo[N])
}
