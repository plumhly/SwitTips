//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class MyClass {
    @objc func callMe() {
        print("Hi")
    }
}

let obj = MyClass()

Timer.scheduledTimer(timeInterval: 1, target: obj, selector:#selector(MyClass.callMe) , userInfo: nil, repeats: true)