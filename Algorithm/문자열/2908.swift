//
//  2908.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/23.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2908() {
    let inputArray = readLine()!.split(separator: " ")
    var max = 0

    inputArray.forEach {
        let reversedValue = Int(String($0.reversed()))!
        
        if reversedValue > max {
            max = reversedValue
        }
    }

    print(max)
}
