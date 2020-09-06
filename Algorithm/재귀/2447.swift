//
//  2447.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/06.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2447() {
    let n = Int(readLine()!)!
    let result = stars(n)
    result.forEach {
        print($0)
    }
}

func stars(_ number: Int) -> [String] {
    var result = Array<String>(repeating: "", count: number)
    if number == 1 {
        result[0] = "*"
    } else {
        let subnumber = number / 3
        let substars = stars(subnumber)
        for verticalSlot in 0 ..< 3 {
            let firstLine = subnumber * verticalSlot
            for horizontalSlot in 0 ..< 3 {
                for index in 0 ..< subnumber {
                    if verticalSlot == 1 && horizontalSlot == 1 {
                        var empty = ""
                        for _ in 0 ..< subnumber {
                            empty.append(" ")
                        }
                        result[firstLine+index].append(empty)
                    } else {
                        result[firstLine+index].append(substars[index])
                    }
                }
                
            }
        }
    }
    return result
}
