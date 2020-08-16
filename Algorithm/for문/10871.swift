//
//  10871.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/16.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10871() {
    let inputArr = readLine()!.split(separator: " ").map { Int($0)! }
    let N = inputArr[0], X = inputArr[1]

    var A = readLine()!.split(separator: " ").map { Int($0)! }.filter {$0 < X}

    A.forEach {
        print($0, terminator: " ")
    }
}
