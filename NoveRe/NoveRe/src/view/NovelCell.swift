//
//  NovelCell.swift
//  NoveRe
//
//  Created by Taillook on 2017/07/09.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit

class NovelCell: UITableViewCell {
    var title: UILabel!
    var writer: UILabel!
    var date: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        title = UILabel(frame: CGRect.zero)
        title.textAlignment = .left
        title.adjustsFontSizeToFitWidth = true
        title.numberOfLines = 1
        title.lineBreakMode = NSLineBreakMode.byCharWrapping
        writer = UILabel(frame: CGRect.zero)
        writer.textAlignment = .left
        writer.adjustsFontSizeToFitWidth = true
        writer.numberOfLines = 1
        date = UILabel(frame: CGRect.zero)
        date.textAlignment = .right
        contentView.addSubview(title)
        contentView.addSubview(writer)
        contentView.addSubview(date)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        title.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height / 2)
        writer.frame = CGRect(x: 0, y: frame.height / 2, width: frame.width / 2, height: frame.height / 2)
        date.frame = CGRect(x: frame.width / 2, y: frame.height / 2, width: frame.width / 2, height: frame.height / 2)
    }
}
