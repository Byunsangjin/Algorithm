//
//  10250.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/29.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10250() {
    let T = Int(readLine()!)!
    
    for _ in 0..<T {
        let inputArr = readLine()!.split(separator: " ").map { Int($0)! }
        let H = inputArr[0]
        let N = inputArr[2]
        
        var floor = N % H
        var number = N / H + 1
        if floor == 0 {
            floor = H
            number -= 1
        }
        
        
        if number < 10 {
            print("\(floor)" + "0\(number)")
        } else {
            print("\(floor)" + "\(number)")
        }
    }
}
