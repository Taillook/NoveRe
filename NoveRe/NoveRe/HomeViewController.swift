//
//  ViewController.swift
//  NoveRe
//
//  Created by Taillook on 2017/06/18.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {
    
    @IBOutlet var buttons:[UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(buttons.count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func menuTap(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            print("button_1")
        case 2:
            print("button_2")
        case 3:
            print("button_3")
        case 4:
            print("button_4")
        case 5:
            print("button_5")
        default:break
        }
    }

}

