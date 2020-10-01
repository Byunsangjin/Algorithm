//
//  1003.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/27.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

var countTuple = [(Int, Int)]()

func run_1003() {
    let T = Int(readLine()!)!
    
    countTuple.append((1, 0))
    countTuple.append((0, 1))
    
    for i in 0...40 {
        if i < 2 {
            continue
        }
        
        let tuple = (countTuple[i - 1].0 + countTuple[i - 2].0, countTuple[i - 1].1 + countTuple[i - 2].1)
        countTuple.append(tuple)
    }
    
    for _ in 0..<T {
        let N = Int(readLine()!)!
        print("\(countTuple[N].0) \(countTuple[N].1)")
    }
}
