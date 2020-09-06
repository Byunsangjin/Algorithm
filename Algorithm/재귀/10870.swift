//
//  10870.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/06.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10870() {
    let n = Int(readLine()!)!
    print(fibo(n))
}

func fibo(_ count: Int) -> Int {
    if count == 0 { return 0 }
    if count == 1 { return 1 }
    
    return fibo(count - 1) + fibo(count - 2)
}
