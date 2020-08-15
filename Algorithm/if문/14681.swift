//
//  14681.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/15.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_14681() {
    let PointX = Int(readLine()!)!
    let PointY = Int(readLine()!)!

    if PointX > 0 {
        print(PointY > 0 ? "1" : "4")
    } else {
        print(PointY > 0 ? "2" : "3")
    }
}
