//
//  10039.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10039() {
    var sum = 0
    
    for _ in 0..<5 {
        let score = Int(readLine()!)!
        sum += score > 40 ? score : 40
    }
    
    print(sum / 5)
}
