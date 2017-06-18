//
//  ViewController.swift
//  NoveRe
//
//  Created by Taillook on 2017/06/18.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {
    // インスタンス配列
    var controllerArray : [UIViewController] = []
    var pageMenu : CAPSPageMenu?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var controller1 = UIViewController()
        var controller2 = UIViewController()
        var controller3 = UIViewController()
        var controller4 = UIViewController()
        var controller5 = UIViewController()
        
        controllerArray.append(controller1)
        controllerArray.append(controller2)
        controllerArray.append(controller3)
        controllerArray.append(controller4)
        controllerArray.append(controller5)
        
        // Customize menu (Optional)
        let parameters: [CAPSPageMenuOption] = [
            .scrollMenuBackgroundColor(UIColor.white),
            .viewBackgroundColor(UIColor.white),
            .scrollMenuBackgroundColor(UIColor.hex(hexStr: "#555", alpha: 1.0)),
            .bottomMenuHairlineColor(UIColor.white),
            .selectionIndicatorColor(UIColor.hex(hexStr: "#555", alpha: 1.0)),
            .menuItemFont(UIFont(name: "HelveticaNeue", size: 14.0)!),
            .centerMenuItems(true),
            .menuMargin(0),
            .selectedMenuItemLabelColor(UIColor.black),
            .unselectedMenuItemLabelColor(UIColor.gray)
            
        ]
        
        // Initialize scroll menu
        
        let rect = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: self.view.frame.width, height: self.view.frame.height))
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: rect, pageMenuOptions: parameters)
        
        self.addChildViewController(pageMenu!)
        self.view.addSubview(pageMenu!.view)
        
        pageMenu!.didMove(toParentViewController: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

