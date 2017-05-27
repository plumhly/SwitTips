//: Playground - noun: a place where people can play
//https://www.raywenderlich.com/157556/overloading-custom-operators-swift
import UIKit

precedencegroup DotProductPrecedence {
    associativity: left
    lowerThan: AdditionPrecedence
}

infix operator •: DotProductPrecedence

struct Vector: ExpressibleByArrayLiteral, CustomStringConvertible, Equatable {
    let x: Int
    let y: Int
    let z: Int
    
    init(_ x: Int, _ y: Int, _ z: Int) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    var description: String {
        return "(\(x), \(y), \(z))"
    }
    
    init(arrayLiteral elements: Int...) {
        assert(elements.count == 3, "Must initialize vector with 3 values")
        self.x = elements[0]
        self.y = elements[1]
        self.z = elements[2]
    }
    
    static func + (left: Vector, right: Vector) -> Vector {
        return [left.x + right.x, left.y + right.y, left.z + right.z]
    }
    
    static prefix func - (vec: Vector) -> Vector {
        return [-vec.x, -vec.y, -vec.z]
    }
    
    static func * (left: Vector, right: Vector) -> Vector {
        return [left.y * right.z - left.z * right.y, left.z * right.x - left.x * right.z, left.x * right.y - left.y * right.x]
    }
    
    static func * (left: Int, right: Vector) -> Vector {
        return [right.x * left, right.y * left, right.z * left]
    }
    
    static func * (left: Vector, right: Int) -> Vector {
        return [left.x * right, left.y * right, left.z *  right]
    }
    
    //equaltable
    static func ==(lhs: Vector, rhs: Vector) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z
    }
    
    static func •(left: Vector, right: Vector) -> Int {
        return left.x * right.x + left.y * right.y + left.z * right.z
    }
}

let t1: Vector = [0,1,2]
let t2 = Vector(1, 2, 3)
let t3 = t1 + t2
print(t3)
-t3
var t4 = t1 * 2 * t2
var isEqual = t1 == t2

t1 • t2
t1 • t2 + t3
