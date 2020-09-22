//
//  15651.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/22.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

private var tempArr = [Int]()
private var outputArr = [String]()

func run_15651() {
    let inputArr = readLine()!.split(separator: " ").map { Int($0)! }
    let N = inputArr[0], M = inputArr[1]
    
    tempArr = Array(repeating: 0, count: M)
    
    dfs(n: N, m: M, d: 0)
}

private func dfs(n: Int, m: Int, d: Int) {
    if m == d {
        tempArr.forEach {
            print("\($0)", terminator: " ")
        }
        print()
        
        return
    }
    
    // 순회 한다.
    for i in 0..<n {
        tempArr[d] = i + 1
        dfs(n: n, m: m, d: d + 1)
    }
}
