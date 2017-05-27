//
//  Protocol_Mutating.swift
//  Swift_Tips
//
//  Created by sigma-td on 2017/5/12.
//  Copyright © 2017年 sigma-td. All rights reserved.
//

import Foundation
import UIKit

protocol Vehicle {
    var numberOfWheels: Int {get}
    var color: UIColor {get set}
    
    mutating func changColor()
}

struct Mycar: Vehicle {
    let numberOfWheels = 4
    
    var color = UIColor.red
    
    mutating func changColor() {
        color = .blue
    }
}
