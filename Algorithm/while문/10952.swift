//
//  10952.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/16.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10952() {
    while true {
        let sum = readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +)
        
        if (sum == 0) {
            break
        }
        
        print(sum)
    }
}
