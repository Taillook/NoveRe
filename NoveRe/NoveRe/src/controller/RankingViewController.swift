//
//  ViewController.swift
//  NoveRe
//
//  Created by Taillook on 2017/06/18.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit
import SwiftyJSON

class RankingViewController: UIViewController {
    var json:JSON = "" {
        didSet {
            NoDataView.removeFromSuperview()
            view.addSubview(novelstableView)
        }
    }
    var biggenre = ""
    var novelstableView = UITableView()
    let NoDataView:UIView = UINib(nibName: "NoData", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! UIView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NoDataView.frame = view.frame
        self.view.addSubview(NoDataView)
        setUpTableView()
        if isInternetAvailable() {
            getArticles(biggenre: biggenre)
        }
    }
}
