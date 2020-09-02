//
//  1085.swift
//  Algorithm
//
//  Created by CNT-20-00021 on 2020/09/02.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1085() {
    let inputArr = readLine()!.split(separator: " ").map { Int($0)! }
    let x = inputArr[0]
    let y = inputArr[1]
    let w = inputArr[2]
    let h = inputArr[3]
    
    print(min(min(y, h - y), min(x, w - x)))    
}
