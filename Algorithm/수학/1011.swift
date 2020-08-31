//
//  1011.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/29.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1011() {
    let testCount = Int(readLine()!)!

    func calculateRange(_ number:Int) -> Int {
        var value = 1
        
        while true {
            if value*value > number {
                break
            } else {
                value += 1
            }
        }
        return value - 1
    }

    for _ in 1...testCount {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        let distance = input[1] - input[0]
        let min = calculateRange(distance)
        var d:Int = 0
        if (distance - min*min)%min == 0 {
            d = (distance - min*min)/min
        } else {
            d = (distance - min*min)/min + 1
        }
        print(2*min - 1 + d)
    }
}
