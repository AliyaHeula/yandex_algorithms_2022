//
//  main.swift
//  B. Канонический путь
//
//  Created by Aliya on 11.09.2022.
//

import Foundation

let input = readLine()!
let array = input.split(separator: "/")

var i = 0
var result = ""
result.reserveCapacity(input.count)
while i < array.count {
    if array[i] == "." || array[i] == "" {
        i += 1
        continue
    } else if  array[i] == ".." {
        i += 1
        let tmp = result.lastIndex(of: "/")
        if tmp == nil {
            continue
        }
        result.removeLast(result.distance(from: tmp!, to: result.endIndex))
    } else {
        result += "/" + array[i]
        i += 1
    }
}
if result == "" {
    result = "/"
}
print(result)


