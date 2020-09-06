//
//  11729.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/06.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

var result = ""
var count = 0

func run_11729() {
let n = Int(readLine()!)!

hanoi(number: n, start: 1, mid: 2, end: 3)

print(count)
print(result)
}

func hanoi(number: Int, start: Int, mid: Int, end: Int) {
    if number == 1 {
        result.append("\(start) \(end)\n")
        count += 1
    } else {
        hanoi(number: number - 1, start: start, mid: end, end: mid)
        
        result.append("\(start) \(end)\n")
        count += 1
        
        hanoi(number: number - 1, start: mid, mid: start, end: end)
    }
}
