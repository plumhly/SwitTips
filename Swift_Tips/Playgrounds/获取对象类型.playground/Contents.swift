//: Playground - noun: a place where people can play

import UIKit

let date = NSDate()
let name: AnyClass = object_getClass(date)
print(name)

let str = "string"
let name2 = type(of: str)
debugPrint(name2)

class A {
    
}

let a = A()
print(type(of: a))
print(A.self)



