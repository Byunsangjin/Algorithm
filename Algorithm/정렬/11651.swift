//
//  11651.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/20.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_11651() {
    let N = Int(readLine()!)!
    var pointArr = [Point]()
    
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        pointArr.append(Point(x: input[0], y: input[1]))
    }
    
    pointArr.sort { (p1, p2) -> Bool in
        if p1.y == p2.y {
            return p1.x < p2.x
        } else {
            return p1.y < p2.y
        }
    }
    
    pointArr.forEach {
        print("\($0.x) \($0.y)")
    }
}

//struct Point {
//    let x: Int
//    let y: Int
//}
