//
//  2581.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/31.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2581() {
    let M = Int(readLine()!)!
    let N = Int(readLine()!)!
    
    let primeArr = (M...N).filter { isPrime(number: $0) }
    
    if primeArr.count == 0 {
        print(-1)
    } else {
        print(primeArr.reduce(0, +))
        print(primeArr.min()!)
    }
}

func isPrime(number: Int) -> Bool {
    if number == 1 {
        return false
    } else if number < 4 {
        return true
    }
    
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    
    return true
}
