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
        // Viewを格納する配列
        var controllerArray : [UIViewController] = []
        
        // 追加するViewを作成
        for i in biggenres {
            let controller = RankingViewController()
            controller.title = i["title"]
            controller.biggenre = i["param"]!
            controllerArray.append(controller)
        }
        
        // PageMenuの設定
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(5),
            .useMenuLikeSegmentedControl(false),
            .menuItemSeparatorPercentageHeight(0.1),
            .menuHeight(44),
            .selectionIndicatorHeight(4)
        ]
        
        // PageMenuへのビューの追加と、PageMenuのビューサイズを設定
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x:0.0,y:0.0,width:self.view.frame.width,height:self.view.frame.height), pageMenuOptions: parameters)
        
        // PageMenuのビューを親のビューに追加
        self.view.addSubview(pageMenu!.view)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
