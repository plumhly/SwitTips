//
//  ViewController.swift
//  Swift_Tips
//
//  Created by sigma-td on 2017/5/12.
//  Copyright © 2017年 sigma-td. All rights reserved.
//


import UIKit

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
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        //TODO: 这里将要做
        
        //FIXME: fix
    }


}

