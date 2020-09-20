//
//  2751.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/20.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2751() {
    let N = Int(readLine()!)!
    var numArr = Set<Int>()
    
    for _ in 0..<N {
        numArr.insert(Int(readLine()!)!)
    }
    
    numArr.sorted().forEach { num in
        print(num)
    }
}
