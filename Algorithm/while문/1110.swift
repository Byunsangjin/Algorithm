//
//  1110.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1110() {
    let N = Int(readLine()!)!
    var sum = (N % 10) * 10 + (N / 10 + N % 10) % 10
    var count = 1
    
    while N != sum {
        sum = (sum % 10) * 10 + (sum / 10 + sum % 10) % 10
        count += 1
    }
    
    print(count)
}
