//
//  4948.swift
//  Algorithm
//
//  Created by CNT-20-00021 on 2020/09/02.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_4948() {
    let maxNumber = 123456
    
    let sqrtNumber = Int(sqrt(Double(2 * maxNumber)))
    var primeArr = Array(repeating: true, count: 2 * maxNumber + 1)

    primeArr[0] = false
    primeArr[1] = false
    
    for i in 0...sqrtNumber {
        if primeArr[i] == false { continue }

        stride(from: i * 2, to: 2 * maxNumber + 1, by: i).forEach { j in
            primeArr[j] = false
        }
    }

    while true {
        let n = Int(readLine()!)!

        if n == 0 {
            break
        }
        
        var count = 0
        for i in (n + 1...2 * n) {
            if primeArr[i] {
                count += 1
            }
        }
        
        print(count)
    }
}


