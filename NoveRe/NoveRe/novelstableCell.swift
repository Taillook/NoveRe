//
//  novelstableCell.swift
//  NoveRe
//
//  Created by Taillook on 2017/06/22.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit

class novelstableCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
