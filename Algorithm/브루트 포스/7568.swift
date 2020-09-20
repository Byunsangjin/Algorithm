//
//  7568.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/06.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_7568() {
    let N = Int(readLine()!)!
    var people = [(Int, Int)]()
    var rankArr = [String]()
    
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        people.append((input[0], input[1]))
    }
    
    for i in 0..<N {
        var rank = 1
        
        for j in 0..<N {
            if i == j {
                continue
            } else {
                if people[i].0 < people[j].0 && people[i].1 < people[j].1 {
                    rank += 1
                }
            }
        }
        
        rankArr.append("\(rank) ")
    }
    
    print(rankArr.joined())
}
