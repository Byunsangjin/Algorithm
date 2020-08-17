//
//  3052.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_3052() {
    var remainder = Set<Int>()
    
    for _ in 0..<10 {
        remainder.insert(Int(readLine()!)! % 42)
    }
    
    print(remainder.count)
}
