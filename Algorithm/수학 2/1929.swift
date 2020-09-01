//
//  1929.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/31.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1929() {
    let inputArr = readLine()!.split(separator: " ").map { Int($0)! }
    let sqrtNumber = Int(sqrt(Double(inputArr[1])))
    var primeArr = Array(repeating: true, count: inputArr[1] + 1)

    primeArr[0] = false
    primeArr[1] = false

    for i in 2...sqrtNumber {
        if primeArr[i] == false { continue }

        stride(from: i * 2, to: inputArr[1] + 1, by: i).forEach { j in
            primeArr[j] = false
        }
    }
    
    for i in (inputArr[0]...inputArr[1]) {
        if primeArr[i] {
            print(i)
        }
    }
}
