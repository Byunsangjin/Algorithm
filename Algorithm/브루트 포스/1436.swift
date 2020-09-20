//
//  1436.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/20.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1436() {
    let N = Int(readLine()!)!
    var count = 0
    
    for number in 666..<Int.max {
        if number.contain666 {
            count += 1
            
            if count == N {
                print(number)
                break
            }
        }
    }
}

extension Int {
    var contain666: Bool {
        var num = self
        
        while num >= 666 {
            if num % 1000 == 666 {
                return true
            } else {
                num /= 10
            }
        }
        
        return false
    }
}
