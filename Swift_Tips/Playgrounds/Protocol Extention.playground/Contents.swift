//: Playground - noun: a place where people can play

import UIKit

protocol A2 {
    func method1()
}

extension A2 {
    func method1() {
        print("hi")
    }
    
    func method2() {
        print("hi")
    }
}

struct B: A2 {
    func method1() {
        print("hello")
    }
    
    func method2() {
        print("hello")
    }
}

let b2: A2 = B()
b2.method1()
b2.method2()
print("=============")
let a2 = b2 as! B
a2.method1()
a2.method2()


/*************************
 ***** Where和匹配模式 ****
 ************************/

let name: [String] = ["王小二", "张三", "李四", "王二小"]

name.forEach({
    switch $0 {
        case let x where x.hasPrefix("王"):
        print("\(x)是王")
        default:
        print("hello \($0)")
    }
})

let num: [Int?] = [48, 99, nil]
let n = num.flatMap {
    $0
}

for score in n where score > 60 {
    print(score)
}

num.forEach({
    if let score = $0, score > 60 {
        print(score)
    }
})



/**************************************
 ********* indrect和嵌套的Enum  *********
 *************************************/


indirect enum LinkList<Element: Comparable> {
    case empty
    case node(Element, LinkList<Element>)
    
    func removing(_ element: Element) -> LinkList<Element> {
        guard case let .node(value, next) = self else {
            return .empty
        }
        
        return element == value ?
        next : LinkList.node(value, next.removing(element))
    }
}

let list = LinkList.node(1, .node(2, .node(3, .node(4, .empty))))

let result = list.removing(2)
print(result)

