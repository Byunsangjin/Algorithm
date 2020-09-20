//
//  10814.swift
//  Algorithm
//
//  Created by sjbyun on 2020/09/20.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import Foundation

func run_10814() {
    let N = Int(readLine()!)!
    var people = [Person]()
    
    for _ in 0..<N {
        let inputArr = readLine()!.split(separator: " ").map(String.init)
        people.append(Person(age: Int(inputArr[0])!, name: inputArr[1]))
    }
    
    people.sort { (p1, p2) -> Bool in
        p1.age < p2.age
    }
    
    people.forEach {
        print("\($0.age) \($0.name)")
    }
}

struct Person {
    var age: Int
    var name: String
}
