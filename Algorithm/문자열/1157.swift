//
//  1157.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/22.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1157() {
    let input = readLine()!.uppercased()
    var countFromletter = Array(repeating: 0, count: 26)
    
    for alphabet in input {
        countFromletter[Int(alphabet.asciiValue!) - 65] += 1
    }
    
    let maxCount = countFromletter.max()!
    if countFromletter.firstIndex(of: maxCount) == countFromletter.lastIndex(of: maxCount) {
        print(UnicodeScalar(65 + countFromletter.firstIndex(of: maxCount)!)!)
    } else {
        print("?")
    }
}
