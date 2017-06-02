//: Playground - noun: a place where people can play

import UIKit


extension Array {
    //Int...当只有一个参数会和现有的冲突
    subscript(input: [Int]) -> ArraySlice<Element> {
        get {
            var result = ArraySlice<Element>()
            for i in input {
                assert(i < self.count, "index out of range")
                result.append(self[i])
            }
            return result
        }
        set {
            for (index, i) in input.enumerated() {
                assert(i < self.count, "index out of range")
                self[i] = newValue[index]
            }
        }
    }
}


var array = [1,2,3]
array[[0,2]]
//array[2]
//array[[0,2]] = [2, 2]
array