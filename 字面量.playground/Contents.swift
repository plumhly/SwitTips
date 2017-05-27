//: Playground - noun: a place where people can play

import UIKit

enum Mybool: Int {
    case myTrue, myFalse
}

extension Mybool: ExpressibleByBooleanLiteral {
    init(booleanLiteral value: Bool) {
        self = value ? .myTrue : .myFalse
    }
}

let myT: Mybool = .myTrue
let myF: Mybool = .myFalse
myF.rawValue


//round 1
class Person: ExpressibleByStringLiteral {
    let name: String
    init(name: String) {
        self.name = name
    }
    //round 2
    required convenience init(stringLiteral value: String) {
        self.init(name: value)
    }
    
    convenience required init(unicodeScalarLiteral value: String) {
        self.init(name: value)
    }
    
    convenience required init(extendedGraphemeClusterLiteral value: String) {
        self.init(name: value)
    }
}



let p: Person = "libo"
p.name