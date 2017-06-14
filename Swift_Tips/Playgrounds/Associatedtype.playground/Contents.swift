//: Playground - noun: a place where people can play

import UIKit

protocol Food {}

protocol Animal {
    //round 2
    associatedtype F: Food
    func eat(_ food: F)
}

struct Meat: Food {
    
}

struct Grass: Food {
    
}

//round 1

/*
do {
    struct Tiger: Animal {
        func eat(_ food: Food) {
            if let meat = food as? Meat {
                print("Meat")
            } else {
                fatalError("Wrong")
            }
        }
    }

    let meat = Meat()
    Tiger().eat(meat)
}
*/


//round 2

do {
    struct Tiger: Animal {
        func eat(_ food: Meat) {
            print("Meat 2")
        }
    }
    
    let meat = Meat()
    Tiger().eat(meat)
    
    //注意： 这时的Animal 协议就不能被当作独立的类型使用了,它只能作为泛型约束,也失去的动态派发的特性
    func isDangerous<T: Animal>(annimal: T) -> Bool {
        if annimal is Tiger {
            return true
        } else {
            return false
        }
    }
    
    struct Sheep: Animal {
        func eat(_ food: Grass) {
            print("G")
        }
    }
    
    isDangerous(annimal: Tiger())
    isDangerous(annimal: Sheep())
}


//可变参数
func myFun(numbers: Int..., name: String) {
    numbers.forEach { (value) in
        print(value)
    }
}

myFun(numbers: 1,5,3, name: "plum")


