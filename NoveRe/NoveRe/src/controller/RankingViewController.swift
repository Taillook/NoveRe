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


class RankingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var json:JSON = ""
    var selectedNcode:String = ""
    var biggenre = ""
    var novelstableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        if isInternetAvailable() {
            getArticles(biggenre: biggenre)
        }
    }
    
    func setUpTableView() {
        novelstableView = UITableView(frame: CGRect(x:0,y:0,width:DeviceSize.screenWidth,height:DeviceSize.screenHeight - DeviceSize.statusBarHeight - 74), style: .plain)
        novelstableView.estimatedRowHeight = 90
        novelstableView.rowHeight = UITableViewAutomaticDimension
        novelstableView.rowHeight = 70
        novelstableView.delegate      =   self
        novelstableView.dataSource    =   self
        novelstableView.register(NovelCell.self, forCellReuseIdentifier: NSStringFromClass(NovelCell.self))
        self.view.addSubview(novelstableView)
    }
    
    func getArticles(biggenre: String) {
        Alamofire.request("http://api.syosetu.com/novelapi/api/", parameters: ["out": "json", "biggenre": biggenre, "order": "hyoka"]).responseJSON{ response in
            self.json = JSON(response.result.value!)
            self.novelstableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(NovelCell.self), for: indexPath) as! NovelCell
        cell.title.text = String(describing: self.json[indexPath.row + 1]["title"])
        cell.writer.text = "Writer: " + String(describing: self.json[indexPath.row + 1]["writer"])
        cell.date.text = "Update: " + dateFormat(date: String(describing: self.json[indexPath.row + 1]["novelupdated_at"]))
        return cell
    }
    
    func tableView(_ table: UITableView,didSelectRowAt indexPath: IndexPath) {
        selectedNcode = String(describing: self.json[indexPath.row + 1]["ncode"])
        let novelView = NobelInfoViewController()
        novelView.ncode = selectedNcode
        let modalView = UINavigationController(rootViewController: novelView)
        modalView.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        self.view.window?.rootViewController!.present(modalView, animated: true, completion: nil)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
}
