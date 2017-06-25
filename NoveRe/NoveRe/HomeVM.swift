//
//  HomeVM.swift
//  NoveRe
//
//  Created by Taillook on 2017/06/25.
//  Copyright © 2017年 Taillook. All rights reserved.
//

import Foundation

protocol HomeViewModel: class {
    func reloadData()
}

class HomeDefaultViewModel: HomeViewModel {
    func reloadData() {
    }

}
