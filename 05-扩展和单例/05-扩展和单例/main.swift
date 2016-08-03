


//
//  main.swift
//  05-扩展和单例
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Foundation

print("Hello, World!")

let now = NSDate()//当前日期
print(now.stringValue)//访问属性


print(now.string())//调用方法

let date = NSDate.dateFromString("1990-01-20 12:34:56")
print(date)


let instance = Singleton.shareInstance
let instance1 = Singleton.shareInstance
let instance2 = Singleton.shareInstance

print(instance)
print(instance1)
print(instance2)

//let instance3 = Singleton()
//print(instance3)