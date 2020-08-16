//
//  2439.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/16.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2439() {
    let N = Int(readLine()!)!
    
    for i in 1...N {
        var string = ""
        for _ in 0..<N - i {
            string.append(" ")
        }
        
        for _ in 0..<i {
            string.append("*")
        }
        
        print(string)
    }
}
