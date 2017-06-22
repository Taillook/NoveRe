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


class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var menuTag = 1
    @IBOutlet var buttons:[UIButton] = []
    @IBOutlet var buttonBars:[UIView] = []
    @IBOutlet weak var novelstableView: UITableView!
    var biggenres:[String] = [" ", "1", "2", "3", "4", "99", "98"]
    var json:JSON = ""
    var selectedNcode:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //print(buttons.count)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        getArticles(biggenre: "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getArticles(biggenre: String) {
        Alamofire.request("http://api.syosetu.com/novelapi/api/", parameters: ["out": "json", "biggenre": biggenre, "order": "hyoka"]).responseJSON{ response in
            self.json = JSON(response.result.value!)
            /*for i in 1..<21{
                print(self.json[i])
                print(i)
            }*/
            self.novelstableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HomeViewToNovelInfo" {
            let secondViewController:NobelInfoViewController = segue.destination as! NobelInfoViewController
            secondViewController.ncode = selectedNcode
        }
        
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100 //動いてなくね？
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! novelstableCell
        cell.title.text = String(describing: self.json[indexPath.row + 1]["title"])
        cell.name.text = String(describing: self.json[indexPath.row + 1]["writer"])
        cell.date.text = String(describing: self.json[indexPath.row + 1]["novelupdated_at"])
        return cell
    }
    
    func tableView(_ table: UITableView,didSelectRowAt indexPath: IndexPath) {
        // [indexPath.row] から画像名を探し、UImage を設定
        //print(String(describing: self.json[indexPath.row + 1]["ncode"]))
        selectedNcode = String(describing: self.json[indexPath.row + 1]["ncode"])
        performSegue(withIdentifier: "HomeViewToNovelInfo",sender: nil)
    }
    
    @IBAction func toggleMenu(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            print("button_1")
        case 2:
            print("button_2")
        case 3:
            print("button_3")
        case 4:
            print("button_4")
        case 5:
            print("button_5")
        default:break
        }
        
        if sender.tag != menuTag{
            menuTag = sender.tag
            for i in buttons {
                if i.tag != sender.tag{
                    buttonBars[i.tag - 1].backgroundColor = UIColor.hex(hexStr: "#FFFFFF", alpha: 1.0)
                    i.setTitleColor(UIColor.hex(hexStr: "#555555", alpha: 1.0), for: .normal)
                }else{
                    buttonBars[i.tag - 1].backgroundColor = UIColor.hex(hexStr: "#333333", alpha: 1.0)
                    i.setTitleColor(UIColor.hex(hexStr: "#333333", alpha: 1.0), for: .normal)
                    
                    getArticles(biggenre: biggenres[i.tag - 1])
                }
            }
        }
    }

}

