//
//  1546.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1546() {
    let N = Int(readLine()!)!
    let scoreArray = readLine()!.split(separator: " ").map { Int($0)! }
        
    let sum = scoreArray.map { Float($0) / Float(scoreArray.max()!) }.reduce(0, +)
    
    print(sum / Float(N) * 100)
}
