//
//  15650.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/22.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

private var tempArr = [Int]()
private var visited = [Bool]()
private var outputArr = [String]()

func run_15650() {
    let inputArr = readLine()!.split(separator: " ").map { Int($0)! }
    let N = inputArr[0], M = inputArr[1]
    
    tempArr = Array(repeating: 0, count: M)
    visited = Array(repeating: false, count: N)
    
    dfs(n: N, m: M, d: 0, min: 0)
    
    outputArr.forEach { print($0) }
}

private func dfs(n: Int, m: Int, d: Int, min: Int) {
    if m == d {
        let output = tempArr.map(String.init).joined(separator: " ")
        outputArr.append(output)
        
        return
    }
    
    // 순회 한다.
    for i in 0..<n {
        /// 방문 하지 않았다면
        if visited[i] == false && min <= i {
            // 방문 했음
            visited[i] = true
            
            tempArr[d] = i + 1
            
            // 방문하지 않은 다음 노드 방문
            dfs(n: n, m: m, d: d + 1, min: i)
            
            visited[i] = false
        }
    }
}
