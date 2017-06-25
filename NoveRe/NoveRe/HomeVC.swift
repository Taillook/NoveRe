//
//  ViewController.swift
//  NoveRe
//
//  Created by Taillook on 2017/06/18.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire


class HomeVC: UIViewController {
    private lazy var hometableV: UITableView = {
        let hometableV = UITableView(frame: CGRect(x: 0, y: 0, width: DeviceSize.screenWidth, height: DeviceSize.screenHeight - DeviceSize.navigationBarHeight(self.navigationController!) - DeviceSize.statusBarHeight))
        hometableV.dataSource = self
        return hometableV
    }()
    var viewModel: HomeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }
    
    private func setupUI() {
        self.navigationItem.title = "Novele"
        self.view.backgroundColor = UIColor.hex(hexStr: "#EEEEEE", alpha: 1.0)
        
        self.view.addSubview(hometableV)
    }
}

extension HomeVC: UITableViewDataSource {
    @available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell()
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
}
