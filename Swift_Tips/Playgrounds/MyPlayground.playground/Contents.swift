//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let count = 2
let aligment = MemoryLayout<Int>.alignment
let stride = MemoryLayout<Int>.stride
let bitCount = count * stride
print("Raw Pointer")

let pointer = UnsafeMutableRawPointer.allocate(bytes: bitCount, alignedTo: aligment)//memset()
defer {
    pointer.deallocate(bytes: bitCount, alignedTo: aligment)
}

//5
pointer.storeBytes(of: 42, as: Int.self)
pointer.advanced(by: stride).storeBytes(of: 24, as: Int.self)
pointer.load(as: Int.self)
pointer.advanced(by: stride).load(as: Int.self)

let bufferPoint = UnsafeRawBufferPointer(start: pointer, count: bitCount)
for (index, bit) in bufferPoint.enumerated() {
    print("byte \(index):\(bit) \n")
}