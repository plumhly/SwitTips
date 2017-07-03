//
//  Delay.swift
//  Swift_Tips
//
//  Created by sigma-td on 2017/7/3.
//  Copyright © 2017年 sigma-td. All rights reserved.
//

import Foundation

typealias Task = (Bool) -> Void

@discardableResult
func delay(_ time: TimeInterval, queue: DispatchQueue = DispatchQueue.main, task:@escaping ()-> Void) -> Task? {
    func dispatch_after(block: @escaping ()->()) {
        queue.asyncAfter(deadline: DispatchTime.now() + time, execute: block)
    }
    
    var closure: (()->Void)? = task
    var result: Task?
    
    let dalayClosure: Task = {
        cancel in
        if let internalClousure = closure {
            if cancel == false {
                queue.async(execute: internalClousure)
            }
        }
        
        closure = nil
        result = nil //cancel控制
    }
    
    result = dalayClosure
    
    dispatch_after {
        if let delayC = result {
            delayC(false)
        }
    }
    
    return result
    
}

func cancel(_ task: Task?) {
    task?(true)
}
