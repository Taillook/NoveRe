//
//  ViewController.swift
//  NoveRe
//
//  Created by Taillook on 2017/06/18.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {
    var menuTag = 1
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

    
    @IBAction func toggleMenu(_ sender: UIButton) {
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
        
        if sender.tag != menuTag{
            menuTag = sender.tag
            for i in buttons {
                if i.tag != sender.tag{
                    i.backgroundColor = UIColor.hex(hexStr: "#FFFFFF", alpha: 1.0)
                    i.setTitleColor(UIColor.hex(hexStr: "#555555", alpha: 1.0), for: .normal)
                }else{
                    i.backgroundColor = UIColor.hex(hexStr: "#555555", alpha: 1.0)
                    i.setTitleColor(UIColor.hex(hexStr: "#FFFFFF", alpha: 1.0), for: .normal)
                }
            }
        }
    }

}

