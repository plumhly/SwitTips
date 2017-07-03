//: Playground - noun: a place where people can play

import UIKit

func method(_ num: UnsafePointer<CInt>) {
    print(num.pointee)
}

var a: CInt = 23
method(&a)

let array = NSArray(array: ["libo"])
let str = unsafeBitCast(CFArrayGetValueAtIndex(array, 0), to: CFString.self)

let b = String.self
print(b)

class A {
    var a = 1
    deinit {
        print("A 一斤释放")
    }
}

var pointer: UnsafeMutablePointer<A>!

pointer = UnsafeMutablePointer<A>.allocate(capacity: 1)
pointer.initialize(to: A())

print(pointer.pointee.a)

pointer.deinitialize()
pointer.deallocate(capacity: 1)

pointer = nil






let c:A.Type = A.self
print(c)






