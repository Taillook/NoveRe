//
//  DeviceSize.swift
//  NoveRe
//
//  Created by Taillook on 2017/07/03.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit

struct DeviceSize {
    static let bounds = UIScreen.main.bounds
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let statusBarHeight = UIApplication.shared.statusBarFrame.height
    static let navigationBarHeight = { (navigationController: UINavigationController) -> CGFloat in
        return navigationController.navigationBar.frame.size.height
    }
    static let tabBarHeight = { (tabBarController: UITabBarController) -> CGFloat in
        return tabBarController.tabBar.frame.size.height
    }
}
