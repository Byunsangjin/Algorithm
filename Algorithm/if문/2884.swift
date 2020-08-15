//
//  2884.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/15.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2884() {
    let inputArr = readLine()?.split(separator: " ")
    
    var convertMinute = Int(inputArr![0])! * 60 + Int(inputArr![1])!
    
    convertMinute -= 45
    convertMinute = convertMinute < 0 ? convertMinute + 24 * 60 : convertMinute
    
    print("\(convertMinute / 60) \(convertMinute % 60)")
}
