//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

struct Vector2D {
    var x = 0.0
    var y = 0.0
}

func + (l: Vector2D, r: Vector2D) -> Vector2D {
    return Vector2D(x: l.x + r.x, y: l.y + r.y)
}

let v1 = Vector2D(x: 1, y: 2)
let v2 = Vector2D(x: 3, y: 4)
let v3 = v1 + v2


precedencegroup DotProductPrecedence {
    associativity: none
    higherThan: MultiplicationPrecedence
}

infix operator +*: DotProductPrecedence

func +* (l: Vector2D, r: Vector2D) -> Double {
    return l.x * r.x + l.y * r.y
}

let v4 = v1 +* v2

//函数参数
func makeIncrementor(addNumber: Int) -> ((inout Int) ->()) {
    func increment( variable: inout Int) {
        variable += addNumber
    }
    return increment
}

let add = makeIncrementor(addNumber: 2)
var num = 10
add(&num)

// typealias 和 泛型
typealias StringDictionary<T> = Dictionary<String, T>
var sub: StringDictionary<Int> = ["2" :  3]


