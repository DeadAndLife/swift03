//
//  Customer.swift
//  03-ARC
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Cocoa

class Customer: NSObject {
    var name:String
    var card:CreditCard?
    
    init(name:String) {
        self.name = name
    }
    
    deinit{
        print("\(name) bye...")
    }
}
