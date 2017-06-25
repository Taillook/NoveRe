//
//  EntryPoint.swift
//  NoveRe
//
//  Created by Taillook on 2017/06/25.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import UIKit

struct EntryPoint {
    func main() -> UIViewController {
        let view = HomeVC()
        view.viewModel = HomeDefaultViewModel()
        
        return view
    }
}
