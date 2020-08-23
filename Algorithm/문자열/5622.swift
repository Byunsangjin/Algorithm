//
//  5622.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/22.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_5622() {
    let letters = ["", "", "", "ABC", "DEF", "GHI", "JKL", "MNO", "PQRS", "TUV", "WXYZ"]
    var time = 0

    readLine()!.forEach { inputChar in
        for i in 0..<letters.count {
            if letters[i].contains(inputChar) {
                time += i
            }
        }
    }

    print(time)
}
