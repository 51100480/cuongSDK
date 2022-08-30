//
//  ViewController.swift
//  cuongDemo
//
//  Created by mac on 30/08/2022.
//

import UIKit
import hdSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    let a = TestFn()
      let b =  a.getDataSum(a: 10, b: 10)
        print(b)
        
    }


}

