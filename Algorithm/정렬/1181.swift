//
//  1181.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/20.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1181() {
    let N = Int(readLine()!)!
    var wordArr = Set<String>()
    
    for _ in 0..<N {
        wordArr.insert(readLine()!)
    }
    
    wordArr.sorted { (s1, s2) -> Bool in
        s1 < s2
    }.sorted { (s1, s2) -> Bool in
        s1.count < s2.count
    }.forEach {
        print($0)
    }
}
