//
//  Person.swift
//  03-ARC
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Cocoa

class Person: NSObject {
    var name:String
    var house:House?
    
    init(name:String) {
        self.name = name
    }
    
    deinit{//析构器
        print("\(name) bye ....")
        
        //super.deinit()
    }
}
