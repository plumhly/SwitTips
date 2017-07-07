//: Playground - noun: a place where people can play

import UIKit


class Drinking {
    typealias liquidColor = UIColor
    var color: liquidColor {
        return .clear
    }
    
    class func drinking(name: String) -> Drinking {
        var dring: Drinking
        switch name {
        case "Coke":
            dring = Coke()
            
        case "Beer":
            dring = Beer()
        default:
            dring = Drinking()
        }
        return dring
    }
    
}

class Coke: Drinking {
    override var color: Drinking.liquidColor {
        return .black
    }
}

class Beer: Drinking {
    override var color: Drinking.liquidColor {
        return .yellow
    }
}

let coke = Drinking.drinking(name: "Coke")
let beer = Drinking.drinking(name: "Beer")

print(NSStringFromClass(type(of: coke)))
print(NSStringFromClass(type(of: beer)))




//打印
var number = 1.234
print(String(format: "%.2f", number))

extension Double {
    func format(_ f: String) -> String {
         return String(format: "%\(f)f", self)
    }
}

print(1.233.format(".2"))





//delegate 

protocol Pro: class {
    func hh()
}

class PL {
    weak var delegate: Pro?
}

class UM: Pro {
    var pl = PL()
    func gg() {
        pl.delegate = self
    }
    
    func hh() {
        print("gg")
    }
    
}



