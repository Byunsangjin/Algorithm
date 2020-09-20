//
//  2231.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/06.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2231() {
    let N = Int(readLine()!)!
    let startNumber = N - String(N).count * 9
    var constructor = 0
    
    for i in (startNumber > 0 ? startNumber : 0)..<N {
        if N == getConstructor(number: i) {
            constructor = i
            break
        }
    }
    
    print(constructor)
}

func getConstructor(number: Int) -> Int {
    if number < 10 {
        return number * 2
    }
    
    let tempString = String(number)
    let constructor = number + tempString.map(String.init).map { Int($0)! }.reduce(0, +)
    
    return constructor
}
