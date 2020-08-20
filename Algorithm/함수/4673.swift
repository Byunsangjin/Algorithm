//
//  4673.swift
//  Algorithm
//
//  Created by Byunsangjin on 20/08/2020.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_4673() {
    var numArr = Array(repeating: true, count: 10001)
    
    for idx in 1...10000 {
        let constructor = d(idx)
        if constructor <= 10000 {
            numArr[constructor] = false
        }
    }
    
    for idx in 1...10000 {
        if numArr[idx] {
            print(idx)
        }
    }
}

func d(_ n: Int) -> Int {
    var constructor = n
    var addNum = n;
    
    while addNum > 0 {
        constructor += addNum % 10
        addNum /= 10
    }
    
    return constructor
}
