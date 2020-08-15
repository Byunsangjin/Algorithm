//
//  2753.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/15.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_2753() {
    // 윤년이면 1 아니면 0 출력
    // 윤년은 연도가 4의 배수이면서, 100의 배수가 아닐 때 또는 400의 배수일 때이다.
    
    let year = Int(readLine()!)!
    
    if year % 4 == 0  && year % 100 != 0 {
        print("1")
    } else if year % 400 == 0 {
        print("1")
    } else {
        print("0")
    }
}
