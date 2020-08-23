//
//  11720.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/22.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_11720() {
    let _ = readLine()!
    let sum = readLine()!.map(String.init).map { Int($0)! }.reduce(0, +)

    print(sum)
}
