//
//  Myclass+ex.swift
//  Swift_Tips
//
//  Created by sigma-td on 2017/7/11.
//  Copyright © 2017年 sigma-td. All rights reserved.
//

import Foundation

private var key: Void?

extension PlumClass {
    
    var title: String? {
        get {
            return objc_getAssociatedObject(self, &key) as? String
        }
        
        set {
            objc_setAssociatedObject(self, &key, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
}
