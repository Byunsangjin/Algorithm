//
//  11022.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/16.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_11022() {
    let N = Int(readLine()!)!
    
    for i in 1...N {
        let numArr = readLine()!.split(separator: " ")
        let A = Int(numArr[0])!
        let B = Int(numArr[1])!
        
        print("Case #\(i): \(A) + \(B) = \(A + B)")
    }
}
