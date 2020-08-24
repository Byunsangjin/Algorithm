//
//  2292.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/24.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2292() {
    let N = Int(readLine()!)!
    var result = 1
    var i = 1
    
    while N > result {        
        result = result + 6 * i
        i += 1
    }
    
    print(i)
}
