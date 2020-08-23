//
//  10809.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/22.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10809() {
    let S = readLine()!.map(String.init)
    let unicodeOfa = UnicodeScalar.init("a")!.value
    let letters: [String] = (0..<26).map { UnicodeScalar(unicodeOfa + $0)! }.map(String.init)
    
    for alphabet in letters {
        if let index = S.firstIndex(of: alphabet) {
            print(index, terminator: " ")
        } else {
            print("-1", terminator: " ")
        }
    }
}
