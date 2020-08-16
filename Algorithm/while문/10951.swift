//
//  10951.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10951() {
    while let line = readLine() {
        let sum = line.split(separator: " ").map { Int($0)! }.reduce(0, +)
        
        print(sum)
    }
}
