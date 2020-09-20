//
//  2798.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/06.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2798() {
    let inputArr = readLine()!.split(separator: " ").map { Int($0)! }
    let _ = inputArr[0], M = inputArr[1]
    
    let inputCardArr = readLine()!.split(separator: " ").filter { Int($0)! <= M }.map { Int($0)! }.sorted()
    
    var max = 0
    for i in 0..<inputCardArr.count - 2 {
        for j in i + 1..<inputCardArr.count - 1 {
            for k in j + 1..<inputCardArr.count {
                let sum = inputCardArr[i] + inputCardArr[j] + inputCardArr[k]
                if sum > M {
                    break
                }
                if max < sum {
                    max = sum
                }
            }
        }
    }
    
    print(max)
}
