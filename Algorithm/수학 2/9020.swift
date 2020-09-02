//
//  9020.swift
//  Algorithm
//
//  Created by CNT-20-00021 on 2020/09/02.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_9020() {
    let maxNumber = 10000
    
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
    
    let T = Int(readLine()!)!
    
    for _ in 0..<T {
        let n = Int(readLine()!)!
        
        for i in (1...n / 2).reversed() {
            if primeArr[i], primeArr[n - i] {
                print("\(i) \(n - i)")
                break
            }
        }
    }
}
