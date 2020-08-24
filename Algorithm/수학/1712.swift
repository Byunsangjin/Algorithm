//
//  1712.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/23.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1712() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    let A = input[0]
    let B = input[1]
    let C = input[2]
    
    let number = floor(Double(A) / Double(C - B)) + 1
    if (B >= C) {
        print(-1)
    } else {
        print(Int(number))
    }
}
