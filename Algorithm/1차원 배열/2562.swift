//
//  2562.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2562() {
    var max = 0
    var maxIdx = 0
    
    for i in 0..<9 {
        let inputNum = Int(readLine()!)!
        if inputNum > max {
            max = inputNum
            maxIdx = i + 1
        }
    }
    
    print(max)
    print(maxIdx)
}
