//
//  9663.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/23.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_9663() {
    let n: Int = Int(readLine()!)!

    var queen: [Int] = []
    var count: Int = 0

    var x: Int = 0
    var y: Int = 0

    func isSafe(_ x: Int, _ y: Int) -> Bool {
        for i in 0..<y {
            if x == queen[i] || y - i == x - queen[i] || y - i == queen[i] - x {
                return false
            }
        }
        return true
    }

    while y >= 0 {
        if y == n {
            count += queen[0] < n / 2 ? 2 : 1
            y -= 1
            x = queen.removeLast() + 1
        }
        
        else if y == 0 && x > (n - 1) / 2 {
            break
        }
        
        else if x == n {
            y -= 1
            x = queen.removeLast() + 1
        }
        
        else if isSafe(x, y) {
            queen.append(x)
            x = 0
            y += 1
        }
        
        else {
            x += 1
        }
    }

    print(count)
}
