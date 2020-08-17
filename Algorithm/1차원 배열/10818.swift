//
//  10818.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10818() {
    let _ = readLine()
    
    let a = readLine()!.split(separator: " ").map { Int($0)! }
    
    print(a.min()!, a.max()!)
}
