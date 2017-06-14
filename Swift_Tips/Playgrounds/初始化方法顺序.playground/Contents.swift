//: Playground - noun: a place where people can play

import UIKit

class Cat {
    var name: String
    init() {
        name = "cat"
    }
}

class Tiger: Cat {
    var power: Int
    
    /*
     1.设置子类自己需要初始化的参数，power = 10
     2.调用父类的相应的初始化方法，super.init()
     3.对父类中的需要改变的成员进行设定，name = "tiger”
     */
    override init() {
        self.power = 10
        
        
        // 如果我们不需要打改变 name 的话，
        // 虽然我们没有显式地对 super.init() 进行调用
        // 不过由于这是初始化的最后了，Swift 替我们自动完成了
        
//        super.init()
//        name = "tiger"
    }
}

let tiger = Tiger()
tiger.power
tiger.name



/*************************************
 **Designated，Convenience 和 Required**
 ***********************************/


class ClassA {
    let numA: Int
    required init(num: Int) {
        numA = num
    }
    
    convenience init(big: Bool) {
        self.init(num: big ? 1000 : 1)
    }
}

class ClassB: ClassA {
    let numB: Int
    
    required init(num: Int) {
        numB = num + 1
        super.init(num: num)
    }
}


let anObj = ClassB(big: true)
anObj.numA




