//
//  Student.swift
//  03-ARC
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Cocoa

class Student: NSObject {
    var age:Int = 18
    
    //weak var weakself = self
    lazy var closure:()->() = {[weak self] in //捕获列表,指定捕获self为弱引用
        print("年龄:\(self!.age)")
    }
    
    deinit{
        print("student bye...")
    }
}
