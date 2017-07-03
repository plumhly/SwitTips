//
//  KVO.swift
//  Swift_Tips
//
//  Created by sigma-td on 2017/7/3.
//  Copyright © 2017年 sigma-td. All rights reserved.
//

import Foundation

class MyClass: NSObject {
     var date = Date()
}

private var myContext = 0

class Class: NSObject {
    var myObject: Plum!
    
    override init() {
        super.init()
        myObject = Plum()
        print("初始化当前信息，当前日期为:\(myObject.date)")
        
        myObject.addObserver(self, forKeyPath: "date", options: .new, context: &myContext)
        
        delay(3) {
            self.myObject.date = Date()
        }
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if let newDate = change?[.newKey] {
            print("日期发生变化\(newDate)")
        }
    }
}

class Plum: MyClass {
   dynamic override var date: Date {
        get {
            return super.date
        }
        
        set {
            super.date = newValue
        }
    }
 }
