//
//  ViewController.swift
//  NoveRe
//
//  Created by Taillook on 2017/06/18.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit
import RxSwift
import SwiftyJSON
import Alamofire
import SnapKit

class HomeVC: UIViewController {
    static let bigGenreNames:[String] = ["All", "Romance", "Fantasy", "Literature", "Sci-Fi"]
    private lazy var hometableV: UITableView = {
        let hometableV = UITableView(frame: CGRect(x: 0, y: 48, width: DeviceSize.screenWidth, height: DeviceSize.screenHeight - DeviceSize.navigationBarHeight(self.navigationController!) - DeviceSize.statusBarHeight - 48))
        hometableV.dataSource = self
        return hometableV
    }()
    private lazy var buttons: [UIButton] = {
        var buttons: [UIButton] = []
        for i in 0..<5{
            buttons.append(UIButton())
            buttons[i].setTitle(bigGenreNames[i], for: .normal)
            buttons[i].setTitleColor(UIColor.hex(hexStr: "#333333", alpha: 1.0), for: .normal)
            buttons[i].setTitleColor(UIColor.hex(hexStr: "#777777", alpha: 1.0), for: .highlighted)
            buttons[i].backgroundColor = UIColor.white
            buttons[i].addTarget(self, action: #selector(HomeVC.tapped(_:)), for:.touchUpInside)
            buttons[i].tag = i
            if i == 0{
                buttons[i].frame = CGRect(x: 0, y: 0, width: DeviceSize.screenWidth/5, height: 44)
            }else{
                buttons[i].frame = CGRect(x: CGFloat(i) * buttons[i - 1].bounds.width, y: 0, width: DeviceSize.screenWidth/5, height: 44)
            }
        }
        return buttons
    }()
    public lazy var barView: UIView = {
        let barView = UIView(frame:CGRect(x: 0, y: 44, width: DeviceSize.screenWidth/5, height: 4))
        barView.backgroundColor = UIColor.hex(hexStr: "#333333", alpha: 1.0)
        return barView
    }()
    var viewModel: HomeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        self.navigationItem.title = "Novele"
        self.view.backgroundColor = UIColor.hex(hexStr: "#EEEEEE", alpha: 1.0)
        setupButtons()
        self.view.addSubview(barView)
        self.view.addSubview(hometableV)
    }
    
    private func setupButtons() {
        for i in 0..<buttons.count{
            self.view.addSubview(buttons[i])
        }
    }
}
