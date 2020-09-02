//
//  3009.swift
//  Algorithm
//
//  Created by CNT-20-00021 on 2020/09/02.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_3009() {
    let onePoint = readLine()!.split(separator: " ").map { Int($0)! }
    let twoPoint = readLine()!.split(separator: " ").map { Int($0)! }
    let threePoint = readLine()!.split(separator: " ").map { Int($0)! }
    
    var x = 0
    if onePoint[0] == twoPoint[0] {
        x = threePoint[0]
    } else if onePoint[0] == threePoint[0] {
        x = twoPoint[0]
    } else {
        x = onePoint[0]
    }
    
    var y = 0
    if onePoint[1] == twoPoint[1] {
        y = threePoint[1]
    } else if onePoint[1] == threePoint[1] {
        y = twoPoint[1]
    } else {
        y = onePoint[1]
    }
    
    print("\(x) \(y)")
}
