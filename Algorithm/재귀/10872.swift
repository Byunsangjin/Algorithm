//
//  10872.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/06.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10872() {
    let N = Int(readLine()!)!
    print(factorial(number: N))
}

func factorial(number: Int) -> Int {
    if number == 0 || number == 1 {
        return 1
    }
    
    return number * factorial(number: number-1)
}
