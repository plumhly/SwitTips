//
//  main.swift
//  Swift_mac
//
//  Created by sigma-td on 2017/5/16.
//  Copyright © 2017年 sigma-td. All rights reserved.
//

import Foundation

print("Hello, World!")


let arr = [0,1,2,3,4]

/*
for i in ReverseSequence(array: arr) {
    print("Index \(i) is \(arr[i])")
}
*/

var iterator = arr.makeIterator()
while let obj = iterator.next() {
    print(obj)
}

