//
//  1978.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/31.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1978() {
    let _ = Int(readLine()!)!
    let inputArr = readLine()!.split(separator: " ").map { Int($0)! }
    
    print(inputArr.filter { isPrimeNumber(number: $0) }.count)
}

func isPrimeNumber(number: Int) -> Bool {
    if number == 1 {
        return false
    } else if number < 4 {
        return true
    }
    
    var count = 0    
    let sqrtNumber = Int(sqrt(Double(number)))
    
    for divider in 1...sqrtNumber {
        if number % divider == 0 {
            count += 1
        }
        
        if count > 1 {
            return false
        }
    }
    
    return true
}
