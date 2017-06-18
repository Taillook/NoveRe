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
        var controller1 = UIViewController() // 自分で表示したいViewControllerを書く。
        var controller2 = UIViewController() // 自分で表示したいViewControllerを書く。
        var controller3 = UIViewController() // 自分で表示したいViewControllerを書く。
        
        controllerArray.append(controller1)
        controllerArray.append(controller2)
        controllerArray.append(controller3)
        
        // Customize menu (Optional)
        let parameters: [CAPSPageMenuOption] = [
            .scrollMenuBackgroundColor(UIColor.white),
            .viewBackgroundColor(UIColor.white),
            .bottomMenuHairlineColor(UIColor.blue),
            .selectionIndicatorColor(UIColor.red),
            .menuItemFont(UIFont(name: "HelveticaNeue", size: 14.0)!),
            .centerMenuItems(true),
            .menuMargin(16),
            .selectedMenuItemLabelColor(UIColor.black),
            .unselectedMenuItemLabelColor(UIColor.gray)
            
        ]
        
        // Initialize scroll menu
        
        let rect = CGRect(origin: CGPoint(x: 0,y :64), size: CGSize(width: self.view.frame.width, height: self.view.frame.height-64))
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

