//
//  10950.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/15.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10950() {
    let N = Int(readLine()!)!
    
    for _ in 0..<N {
        
        let numArr = readLine()!.split(separator: " ").map(String.init)
        print(Int(numArr[0])! + Int(numArr[1])!)
    }
}
