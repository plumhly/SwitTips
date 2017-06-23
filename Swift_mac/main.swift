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

let a: String? = "哈哈" // let a = Optional.some("哈哈")
if case .some(let x) = a {
    print(x)
}

if case let x? = a {
    print("2===\(x)")
}

do {
    var aNil: String? = nil
    var anotherNil: String?? = aNil//some
    
    var literalNil: String?? = nil
    
    print("") //fr v -R
    

}

