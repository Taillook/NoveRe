//
//  DateFormat.swift
//  NoveRe
//
//  Created by Taillook on 2017/07/05.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import Foundation

func dateFormat(date:String) -> String {
    return date.components(separatedBy: " ")[0].replacingOccurrences(of: "-", with: "/")
}
