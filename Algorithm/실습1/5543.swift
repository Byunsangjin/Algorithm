//
//  5543.swift
//  Algorithm
//
//  Created by sjbyun on 2020/08/17.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_5543() {
    var burgerPrice = [Int]()
    var drinkPrice = [Int]()
    
    // 햄버거 가격
    for _ in 0..<3 {
        burgerPrice.append(Int(readLine()!)!)
    }
    
    // 음료수 가격
    for _ in 0..<2 {
        drinkPrice.append(Int(readLine()!)!)
    }
    
    print(burgerPrice.min()! + drinkPrice.min()! - 50)
}

