//
//  2523.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2523() {
    let N = Int(readLine()!)!
    var str = ""
    
    for i in 0..<(2 * N - 1) {
        if N - 1 < i {
            str.removeLast()
        } else {
            str.append("*")
        }
        
        print(str)
    }
}
