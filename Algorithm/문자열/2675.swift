//
//  2675.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/22.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2675() {
    let T = Int(readLine()!)!
    
    for _ in 0..<T {
        let input = readLine()!.split(separator: " ")
        let R = Int(input[0])!
        let S = input[1].map(String.init)
        
        var output = ""
        
        for str in S {
            output.append(String(repeating: str, count: R))
        }
        
        print(output)
    }
}
