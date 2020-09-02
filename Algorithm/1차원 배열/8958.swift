//
//  8958.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_8958() {
    let N = Int(readLine()!)!
    
    for _ in 0..<N {
        let scoreArr = readLine()!.map(String.init)
        var score = 0
        var sum = 0
        
        scoreArr.forEach { OX in
            if OX.elementsEqual("O") {
                score += 1
            } else {
                score = 0
            }
             
            sum += score
        }
        
        print(sum)
    }
}
