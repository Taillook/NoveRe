//
//  SearchViewController.swift
//  NoveRe
//
//  Created by Taillook on 2017/07/17.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "Search"
        let back = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem(rawValue: 101)!, target: self, action: #selector(tapped))
        self.navigationItem.leftBarButtonItem = back
    }
    
    func tapped() {
        self.dismiss(animated: true, completion: nil)
    }
}
