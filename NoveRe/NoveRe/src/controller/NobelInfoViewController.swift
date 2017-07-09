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
    let webView = UIWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "NoveRe"
        let back = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(NobelInfoViewController.tapped))
        self.navigationItem.leftBarButtonItem  = back
        let favoriteURL = NSURL(string: "http://ncode.syosetu.com/" + ncode)
        print(ncode)
        let urlRequest = NSURLRequest(url: favoriteURL! as URL)
        webView.frame = CGRect(x:0,y:0,width:view.bounds.width,height:view.bounds.height)
        webView.loadRequest(urlRequest as URLRequest)
        
        view.addSubview(webView)
    }

    func tapped() {
        self.dismiss(animated: true, completion: nil)
    }
}
