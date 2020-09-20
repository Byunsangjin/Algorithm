//
//  1018.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/06.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

var chessBoard = [[Bool]]()
var height: Int = 0
var width: Int = 0

func run_1018() {
    let inputArr = readLine()!.split(separator: " ").map { Int($0)! }
    height = inputArr[0]
    width = inputArr[1]
    chessBoard = Array(repeating: Array<Bool>(repeating: false, count: width), count: height)

    for i in 0..<height {
        chessBoard[i] = readLine()!.map(Character.init).map { $0 == "W" }
    }
    
    var minCount = Int.max
    
    
    minCount = min(minCount, getChangeBoardCount(isWhite: true))
    minCount = min(minCount, getChangeBoardCount(isWhite: false))
    
    print(minCount)
}

func getChangeBoardCount(isWhite: Bool) -> Int {
    var changeBoardCount = Int.max
    var startX = 0
    var startY = 0
    var isWhite = isWhite
    var count = 0
    
    while true {
        for i in startX..<startX + 8 {
            for j in startY..<startY + 8 {
                if chessBoard[j][i] != isWhite {
                    count += 1
                }
                
                isWhite.toggle()
            }
            isWhite.toggle()
        }
        
        if changeBoardCount > count {
            changeBoardCount = count
        }
        
        count = 0
        
        if startY < height - 8 {
            startY += 1
        } else {
            startX += 1
            startY = 0
        }
        
        if startX > width - 8 {
            break
        }
    }
    
    return changeBoardCount
}
