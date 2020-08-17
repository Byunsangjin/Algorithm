//
//  4344.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_4344() {
    let C = Int(readLine()!)!
    
    for _ in 0..<C {
        var input = readLine()!.split(separator: " ").map { Int($0)! }
        let N = input.removeFirst()
        let avg = input.reduce(0, +) / N
        
        let percent = Double(input.filter { $0 > avg }.count) / Double(N) * 100
        
        print(String(format: "%.3f", percent) + "%")
    }
}
