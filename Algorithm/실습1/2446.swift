//
//  2446.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2446() {
    let N = Int(readLine()!)!
    
    for n in 0..<N {
        print(String(repeating: " ", count: n), terminator: "")
        print(String(repeating: "*", count: 2 * (N - n) - 1))
    }
    
    for n in 1..<N {
        print(String(repeating: " ", count: N - n - 1), terminator: "")
        print(String(repeating: "*", count: 2 * (n + 1) - 1))
    }
}
