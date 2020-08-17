//
//  10996.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10996() {
let N = Int(readLine()!)!

let firstLine = String(repeating: "* ", count: (N + 1) / 2)
let secondLine = String(repeating: " *", count: N / 2)

for _ in 0..<N {
    print(firstLine)
    print(secondLine)
}
}
