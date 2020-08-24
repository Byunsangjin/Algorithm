//
//  1193.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/24.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1193() {
    let input = Int(readLine()!)!
    var floor = 1
    
    while floor * (floor + 1) < input * 2 {
        floor += 1
    }
    
    let moveCnt = (floor * (floor + 1)) / 2 - input
    if floor % 2 == 0 {
        print("\(floor - moveCnt)/\(1 + moveCnt)")        
    } else {
        print("\(1 + moveCnt)/\(floor - moveCnt)")
    }
}
