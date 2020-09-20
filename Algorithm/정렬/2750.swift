//
//  2750.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/20.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2750() {
    let N = Int(readLine()!)!
    var numArr = [Int]()
    
    for _ in 0..<N {
        numArr.append(Int(readLine()!)!)
    }
    
    numArr.sorted().forEach { num in
        print(num)
    }
}
