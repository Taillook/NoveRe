//
//  HomeViewController.swift
//  NoveRe
//
//  Created by Taillook on 2017/07/05.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, CAPSPageMenuDelegate {
    var pageMenu : CAPSPageMenu?
    let biggenres: [[String:String]] = [["param": "", "title": "All"], ["param": "1", "title": "Romance"], ["param": "2", "title": "Fantasy"], ["param": "3", "title": "Literature"], ["param": "4", "title": "Sci-Fi"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var controllerArray : [UIViewController] = []
        self.title = "NoveRe"
        
        for i in biggenres {
            let controller = RankingViewController()
            controller.title = i["title"]
            controller.biggenre = i["param"]!
            controllerArray.append(controller)
        }
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(5),
            .useMenuLikeSegmentedControl(false),
            .menuItemSeparatorPercentageHeight(0.1),
            .menuHeight(44),
            .selectionIndicatorHeight(4),
            .selectionIndicatorColor(UIColor.hex(hexStr: "#EEEEEE", alpha: 1.0)),
            .bottomMenuHairlineColor(UIColor.hex(hexStr: "#EEEEEE", alpha: 1.0))
        ]
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x:0.0,y:0.0,width:self.view.frame.width,height:self.view.frame.height), pageMenuOptions: parameters)
        self.view.addSubview(pageMenu!.view)
    }
}
