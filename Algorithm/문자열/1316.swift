//
//  1316.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/23.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_1316() {
    let N = Int(readLine()!)!
    var count = 0

    for _ in 0..<N {
        var inputArr = readLine()!.map(String.init)
        var compareChar = inputArr.removeFirst()
        
        if inputArr.count == 0 {
            count += 1
        }
        
        while inputArr.count > 0 {
            if compareChar.elementsEqual(inputArr[0]) {
                inputArr.removeFirst()
            } else {
                if inputArr.contains(compareChar) == true {
                    break
                } else {
                    compareChar = inputArr.removeFirst()
                }
            }
            
            if inputArr.count == 0 {
                count += 1
            }
        }
    }
    
    print(count)
}
