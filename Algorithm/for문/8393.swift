//
//  8393.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/16.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_8393() {
    let n = readLine().map{ Int($0)! }!
    var sum = 0
    
    for i in 1...n {
        sum += i
    }
    
    print(sum)
}
