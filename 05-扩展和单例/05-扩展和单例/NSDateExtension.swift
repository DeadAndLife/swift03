//
//  NSDateExtension.swift
//  05-扩展和单例
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Foundation

//扩展: 类似OC的类别
extension NSDate{
    //扩展计算属性
    var stringValue:String {//实例属性
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateStr = dateFormatter.stringFromDate(self)
        
        return dateStr
    }
    
    //扩展实例方法
    func string()->String{
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateStr = dateFormatter.stringFromDate(self)
        
        return dateStr
    }
    
    //扩展类方法
    static func dateFromString(string:String)->NSDate? {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let date = dateFormatter.dateFromString(string)
        
        return date
    }
    
}