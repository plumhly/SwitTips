//: Playground - noun: a place where people can play

import UIKit


class A {
    class func method() {
        print("Hellow")
    }
}

let typeA: A.Type = A.self
typeA.method()

let typeB: AnyClass = A.self
(typeB as! A.Type).method


class MusicVC: UIViewController {
    
}

class AlbumVC: UIViewController {
    
}

let usingType: [AnyClass] = [MusicVC.self, AlbumVC.self]

for type in usingType {
    if type is UIViewController.Type {
        let vc = (type as! UIViewController.Type
        ).init()
        print(vc)
    }
}

print(A.self)


//协议和类方法中的self

protocol Copyable {
    func copy() -> Self
}

class Myclass: Copyable {
    var number = 1
    //round 1
    /*func copy() -> Self {
        let result = Myclass()
        result.number = number
        return result as! Self
    }*/
    
    //round 2
    func copy() -> Self {
        let result = type(of: self).init()
        result.number = number
        return result
    }
    required init() {}
}

let objct = Myclass()
objct.number = 200

let other = objct.copy()

print(objct.number)
print(other.number)


class SubMyClass: Myclass {
    
}

let sub = SubMyClass()
let subOther = sub.copy()

print(sub.number)
print(subOther.number)

//属性观察
class B {
    //计算属性
    var number: Int {
        get {
            print("get")
            return 1
        }
        
        set {
            print("set")
        }
    }
}

class C: B {
    override var number: Int {
        willSet {
            print("willSet")
        }
        //这里在set之前会调用一次，获取oldValue
//        didSet {
//            print("didSet")
//        }
    }
}

let c = C()
c.number = 2
