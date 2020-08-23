//
//  2941.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/23.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2941() {
    let changeLetters = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
    var input = readLine()!
    
    for str in changeLetters {
        input = input.replacingOccurrences(of: str, with: "*")
    }
    
    print(input.count)
}
