//
//  NobelInfoViewController.swift
//  NoveRe
//
//  Created by Taillook on 2017/06/21.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit

class NobelInfoViewController: UIViewController {

    var ncode:String = ""
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let favoriteURL = NSURL(string: "http://ncode.syosetu.com/" + ncode)
        print(ncode)
        let urlRequest = NSURLRequest(url: favoriteURL! as URL)
        webView.loadRequest(urlRequest as URLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
