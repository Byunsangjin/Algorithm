//
//  10817.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10817() {
    let inputArr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    
    print(inputArr[1])
}
