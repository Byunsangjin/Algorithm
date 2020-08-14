//
//  9498.swift
//  Algorithm
//
//  Created by Byunsangjin on 14/08/2020.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_9498() {
    let score = Int(readLine()!)!
    
    if score >= 90 {
        print("A")
    } else if score >= 80 {
        print("B")
    } else if score >= 70 {
        print("C")
    } else if score >= 60 {
        print("D")
    } else {
        print("F")
    }
}
