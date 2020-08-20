//
//  1065.swift
//  Algorithm
//
//  Created by Byunsangjin on 20/08/2020.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1065() {
let N = Int(readLine()!)!
var count = 0

for i in 1...N {
    if getHanSuCount(num: i) {
        count += 1
    }
}

print(count)
}

func getHanSuCount(num: Int) -> Bool {
    if num < 100 {
        return true
    }
    
    let arr = String(num).map(String.init).map { Int($0)! }
    
    let d = arr[1] - arr[0]
    
    for i in 0 ..< arr.count - 1  {
        if arr[i + 1] != arr[i] + d {
            return false
        }
    }
        
    return true
}
