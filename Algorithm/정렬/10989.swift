//
//  10989.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/20.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10989() {
    let N = Int(readLine()!)!
    var inputArr = Array(repeating: 0, count: 10001)
    
    for _ in 0..<N {
        let inputNum = Int(readLine()!)!
        inputArr[inputNum] += 1
    }
    
    for i in 0..<10001 {
        for _ in 0..<inputArr[i] {
            print(i)
        }
    }
}
