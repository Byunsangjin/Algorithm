//
//  1330.swift
//  Algorithm
//
//  Created by Byunsangjin on 14/08/2020.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation


func run_1330() {
    let inputArr = readLine()!.components(separatedBy: " ")

    let numA: Int = Int(inputArr[0])!
    let numB: Int = Int(inputArr[1])!

    if (numA > numB) {
        print(">")
    } else if (numA < numB) {
        print("<")
    } else {
        print("==")
    }
}
