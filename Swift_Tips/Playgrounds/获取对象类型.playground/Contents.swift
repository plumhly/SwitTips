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



class Plum: Equatable,Hashable {
    var hashValue: Int {
        return 1
    }
    
}

func ==(lhs: Plum, rhs: Plum) -> Bool {
    return lhs.hashValue == rhs.hashValue
}

let p1 = Plum()
let p2 = Plum()
let re = p1 == p2