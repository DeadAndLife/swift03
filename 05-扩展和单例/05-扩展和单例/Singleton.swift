//
//  Singleton.swift
//  05-扩展和单例
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Cocoa

//单例的实现
class Singleton: NSObject {
    
    //let 可以实现dispatch_once的特性
    static let shareInstance = Singleton()
    
    private override init() {//可以避免在外部创建新的实例,真正保证了全局唯一性
        
    }
}
