//
//  2869.swift
//  Algorithm
//
//  Created by Byunsangjin on 25/08/2020.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2869() {
    let inputArr = readLine()!.split(separator: " ").map { Int($0)! }
    let A = inputArr[0]
    let B = inputArr[1]
    let V = inputArr[2]
    
    var day = (V - A) / (A - B)
    var restHeight = V - day * (A - B)
    
    while true {
        day += 1
        restHeight -= A
        
        if restHeight <= 0 {
            break
        }
        
        restHeight += B
    }
    
    print(day)
}
