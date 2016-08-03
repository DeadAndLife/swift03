//
//  CreditCard.swift
//  03-ARC
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Cocoa

class CreditCard: NSObject {
    var num:String
    unowned var customer:Customer//无主引用,也没有持有关系
    
    init(num:String,customer:Customer) {
        self.num = num
        self.customer = customer
    }
    
    deinit{
        print("card \(num) bye...")
    }
    
}
