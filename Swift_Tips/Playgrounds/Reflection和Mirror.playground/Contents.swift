//: Playground - noun: a place where people can play

import UIKit

struct Person {
    let name: String
    let age: Int
}

let xm = Person(name: "xiaoming", age: 10)
dump(xm)

let r = Mirror(reflecting: xm)

print("xm是\(r.displayStyle)") //结构
print("xm 类名是 \(type(of: xm))") //类名
print("xm的属性个数：\(r.children.count)")

for child in r.children {
    print("属性名：\(child.label) \n 值：\(child.value)")
}

typealias x = (name: String, age: Int)
let good: x = ("d", 2);
good.name


//kvc

func valueFrom(_ object:Any, key: String) -> Any? {
    let r = Mirror(reflecting: object)
    
    for child in r.children {
        let (targetKey, targetValue) = (child.label, child.value)
        if targetKey == key {
            return targetValue
        }
    }
    return nil
}

valueFrom(xm, key: "name")







/********************
 **** 多重Optional ***
*********************/

var string: String? = "string"

var anotherString: String?? = string

type(of: anotherString)

var aNil: String? = nil
var anotherNil: String?? = aNil//some
type(of: anotherNil)

var literalNil: String?? = nil //non
type(of: literalNil)
if let df = anotherNil {
    print("OK")
}

if let ddf = literalNil {
    print("GG")
}

let array: [Int?] = [1, nil, 3]

let otherAr = array.map {
    $0.map({
        $0 * 2
    })
}

print(otherAr)

