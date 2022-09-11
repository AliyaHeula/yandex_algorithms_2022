//
//  main.swift
//  A. Строительство лесенок
//
//  Created by Aliya on 11.09.2022.
//

import Foundation

var numberOfStairs = Int(readLine()!)!
var result = 0
var tmp = 0
while numberOfStairs >= 0 {
    result += 1
    numberOfStairs -= result
}

print (result - 1)
