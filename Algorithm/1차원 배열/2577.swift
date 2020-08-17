//
//  2577.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2577() {
    var result = Int(readLine()!)! * Int(readLine()!)! * Int(readLine()!)!
    var countArr = [Int](repeating: 0, count: 10)
    
    while result > 0 {
        countArr[result % 10] += 1
        result = result / 10
    }
    
    for count in countArr {
        print(count)
    }
}
