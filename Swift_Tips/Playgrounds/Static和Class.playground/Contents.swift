
//: Playground - noun: a place where people can play

import Cocoa

class MyClass {
//    class var bar: String
    // error: class stored properties not supported in classes
    
    
}


protocol MyProtocol {
//    class func foo() //error:class methods are only allowed within classes
    static func foo()
}

struct MyStruct: MyProtocol {
    static func foo() {
        
    }
}

enum MyEnum: MyProtocol {
    static func foo() {
        
    }
}

class Myclass: MyProtocol {
    class func foo() {
        
    }
}





/****************
            多类型和容器
        ****************************/

let mix: [Any] = [1, "two", 2]

//转换为NSObject

let obejcts = [1 as NSObject, "two" as NSObject, 2 as NSObject]; //最差，信息丢失风险
let ay = mix[0] //Any类型
let qy = obejcts[0] // object类型


let mix2: [CustomStringConvertible] = [1, "two", 2] //稍好一些 信息丢失风险

for o in mix2 {
    print(o.description)
}

// best way

enum IntOrString {
    case intValue(Int)
    case stringValue(String)
}

let mix3 = [IntOrString.intValue(1), IntOrString.stringValue("two"), IntOrString.intValue(2)];

for e in mix3 {
    switch e {
    case let .intValue(i):
        print(i * 2)
    case let .stringValue(i):
        print(i.capitalized)
    }
}


//
//func printName(time: Int, str: String = default) {
//    if str == nil {
//        str = "哈哈"
//    }
//    print(str)
//}
//
//printName(time: 2)

