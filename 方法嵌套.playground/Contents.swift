//: Playground - noun: a place where people can play

import UIKit

//round 1
do {
    func appendQuery(url: String, key: String, value: AnyObject) -> String {
        if let dictionary = value as? [String: AnyObject] {
            return appendQueryDictionary(url: url, key: key, value: dictionary)
        }else if let array = value as? [AnyObject] {
            return appendQueryArray(url: url, key: key, value: array)
        } else {
            return appendQuerySingle(url: url, key: key, value: value)
        }
    }
    
    func appendQueryDictionary(url: String, key: String, value: [String: AnyObject]) -> String {
        return ""
    }
    
    func appendQueryArray(url: String, key: String, value: [AnyObject]) -> String {
        return ""
    }
    
    func appendQuerySingle(url: String, key: String, value: AnyObject) -> String {
        return ""
    }
}

//round 2
do {
    func appendQuery(url: String, key: String, value: AnyObject) -> String {
        
        func appendQueryDictionary(url: String, key: String, value: [String: AnyObject]) -> String {
            return ""
        }
        
        
        func appendQueryArray(url: String, key: String, value: [AnyObject]) -> String {
            return ""
        }
        
        func appendQuerySingle(url: String, key: String, value: AnyObject) -> String {
            return ""
        }
        //logic
        if let dictionary = value as? [String: AnyObject] {
            return appendQueryDictionary(url: url, key: key, value: dictionary)
        }else if let array = value as? [AnyObject] {
            return appendQueryArray(url: url, key: key, value: array)
        } else {
            return  appendQuerySingle(url: url, key: key, value: value)
        }
    }
}


//命名空间

struct Container1 {
    class MyClass {
       static func hello() {
            print("1")
        }
    }
}

struct Container2 {
     class MyClass {
     static  func hello() {
            print("2")
        }
    }
}

Container1.MyClass.hello()
Container2.MyClass.hello()

