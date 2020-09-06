//
//  3053.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/05.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_3053() {
    let r = Double(readLine()!)!
    
    let formatter = NumberFormatter()
    formatter.maximumFractionDigits = 6
    formatter.minimumFractionDigits = 6
    
    print(formatter.string(from: NSNumber(value: r * r * Double.pi))!)
    print(formatter.string(from: NSNumber(value: 2 * r * r))!)
}
