//
//  NSDateExtension.swift
//  02-面向对象基本语法
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Foundation

extension NSDate {
    //扩展计算属性
    static var thisYear:Int {//static属性:类型属性,访问时:类名.属性
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        let dateStr = dateFormatter.stringFromDate(NSDate())
        
        let dateArr = dateStr.componentsSeparatedByString("/")
        
        return Int(dateArr[0])!
    }
    
    
    //扩展方法:实例方法和类方法
    
    
}