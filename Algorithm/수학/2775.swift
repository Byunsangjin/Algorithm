//
//  2775.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/29.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2775() {
    let T = Int(readLine()!)!
    var people = Array(repeating: Array(repeating: 1, count: 14), count: 15)
    
    for i in 0..<14 {
        people[0][i] = i + 1
    }
    
    for i in 1...14 {
        for j in 1..<14 {
            people[i][j] = people[i][j - 1] + people[i - 1][j]
        }
    }
    
    print(people)
    
    for _ in 0..<T {
        let k = Int(readLine()!)!
        let n = Int(readLine()!)! - 1

        print(people[k][n])
    }
}
