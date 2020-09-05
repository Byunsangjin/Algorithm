//
//  4153.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/05.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_4153() {
    while true {
        let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        // 0 0 0 입력 했으면 종료
        if input.reduce(0, +) == 0 {
            break
        }
        
        if input[2] * input[2] == input[0] * input[0] + input[1] * input[1] {
            print("right")
        } else {
            print("wrong")
        }
    }
}
