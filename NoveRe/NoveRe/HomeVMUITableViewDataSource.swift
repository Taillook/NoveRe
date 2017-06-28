//
//  HomeVMUITableViewDataSource.swift
//  NoveRe
//
//  Created by Taillook on 2017/06/26.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit

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
