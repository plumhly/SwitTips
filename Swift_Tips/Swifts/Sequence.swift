//
//  Sequence.swift
//  Swift_Tips
//
//  Created by sigma-td on 2017/5/16.
//  Copyright © 2017年 sigma-td. All rights reserved.
//

import Foundation

class ReverseIterator<T>: IteratorProtocol {
    typealias Element = T
    
    
    var array: [Element]
    var currentIndex = 0
    
    init(array: [Element]) {
        self.array = array
        currentIndex = array.count - 1
    }
    
    func next() -> Element? {
        if currentIndex < 0 {
            return nil
        }
        else {
            let element = array[currentIndex]
            currentIndex -= 1
            return element
        }
    }

}


// Sequence 你可以使用像 map , filter 和 reduce 这些方法
struct ReverseSequence<T>: Sequence {
    var array: [T]
    init(array: [T]) {
        self.array = array
    }
    
    typealias Iterator = ReverseIterator<T>
    
    func makeIterator() -> ReverseIterator<T> {
        return ReverseIterator(array: self.array)
    }
}
