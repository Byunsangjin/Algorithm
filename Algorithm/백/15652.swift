//
//  15652.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/22.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

private var tempArr = [Int]()
private var visited = [Bool]()
private var outputArr = [String]()

func run_15652() {
    let inputArr = readLine()!.split(separator: " ").map { Int($0)! }
    let N = inputArr[0], M = inputArr[1]
    
    tempArr = Array(repeating: 0, count: M)
    visited = Array(repeating: false, count: N)
    
    dfs(n: N, m: M, d: 0)
    
    outputArr.forEach { print($0) }
}

private func dfs(n: Int, m: Int, d: Int) {
    if m == d {
        let output = tempArr.map(String.init).joined(separator: " ")
        outputArr.append(output)
        
        return
    }
    
    // 순회 한다.
    for i in 0..<n {
        if d > 0 && tempArr[d - 1] > i + 1 {
            continue
        }
        
        tempArr[d] = i + 1
        
        dfs(n: n, m: m, d: d + 1)
    }
}
