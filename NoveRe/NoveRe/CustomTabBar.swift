//
//  CustomTabBar.swift
//  NoveRe
//
//  Created by Taillook on 2017/06/19.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit

//navバー設定
class OriginalNavBarController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //UINavigationBar.appearance().shadowImage = UIImage()
        
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 0/255, green: 155/255, blue: 105/255, alpha: 1)//NavBar背景色
        UINavigationBar.appearance().titleTextAttributes = [
            NSForegroundColorAttributeName: UIColor.white,
            NSFontAttributeName: UIFont(name:"Gen Jyuu Gothic", size: 20)!
        ]//NavBarフォント
        UINavigationBar.appearance().tintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        
    }
}
