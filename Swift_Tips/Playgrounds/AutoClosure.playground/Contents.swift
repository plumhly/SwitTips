//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

func logIfTrue( _ predicate:@autoclosure () -> Bool) {
    if predicate() {
        print("True")
    }
}

//logIfTrue({true})
logIfTrue(true)

func ??<T>(optinal: T?, defaultValue:@autoclosure () -> T ) -> T {
    switch optinal {
    case .some(let value):
        return value
    
    case .none:
        return defaultValue()
    }
}
 

var s: Int?
let sd = s ?? 9