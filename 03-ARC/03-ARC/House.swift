//
//  House.swift
//  03-ARC
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Cocoa

class House: NSObject {
    var unit:Int
    weak var owner:Person?
    
    init(unit:Int) {
        self.unit = unit
    }
    
    deinit{
        print("房子:\(unit) bye...")
    }
}
