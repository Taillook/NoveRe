//
//  ViewController.swift
//  NoveRe
//
//  Created by Taillook on 2017/06/18.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var menuTag = 1
    @IBOutlet var buttons:[UIButton] = []
    @IBOutlet var buttonBars:[UIView] = []
    @IBOutlet weak var novelstableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(buttons.count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! novelstableCell
        //((tableView.viewWithTag(1) as! UIStackView).viewWithTag(1) as! UILabel).text = String(indexPath.row)
        cell.title.text = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaTestTest"+String(indexPath.row)
        
        return cell
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
                }
            }
        }
    }

}

