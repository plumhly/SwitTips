//
//  ViewController.swift
//  Swift_Tips
//
//  Created by sigma-td on 2017/5/12.
//  Copyright © 2017年 sigma-td. All rights reserved.
//


import UIKit

// 引用c方法
   @_silgen_name("test") func c_test(a: Int32) -> Int32

class ViewController: UIViewController {
    var tsk: Task? {
        willSet {
            print("new")
        }
    }
    
    let objc = Class()
    
 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var result = c_test(a: 3)
        
#if FREE
    print("Free")
#else
    print("not Free")
#endif    
        
        /*
        let task = delay(2) { 
            print("delay")
        }
        
        cancel(task)
        */
        
        let name = "libo".MD5
        print(name)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        //TODO: 这里将要做
        
        //FIXME: fix
    }


}

