//
//  1929.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/31.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

/**
 에라토스테네스의 체
 제곱근 이하의 수까지의 배수인 수를 지우면 소수만 남는다.
 이를 이용하여 문제 풀이하면 됨.
 */

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
