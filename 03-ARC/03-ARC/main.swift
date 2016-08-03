//
//  main.swift
//  03-ARC
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Foundation

print("Hello, World!")

//ARC : 如果实例没有强引用指向它,则会立即销毁,内存被释放

//强引用:默认都是强引用
var person1:Person?
var person2:Person?
var person3:Person?

person1 = Person(name: "zhangsan")
person2 = person1
person3 = person1

person1 = nil
person2 = nil
person3 = nil


//弱引用: 解决循环强引用的问题
//两个属性都可能为空,这种场景使用weak

var zhangsan:Person? = Person(name: "zhangsan")
var house:House? = House(unit: 3)

zhangsan!.house = house
house!.owner = zhangsan

zhangsan = nil
house = nil

//其中一方的属性可能为nil,另一方不可能为nil,这种场景适合使用无主引用unowned,类似OC的__unsafe_unretained

var john:Customer? = Customer(name: "john")
var card:CreditCard? = CreditCard(num: "1234_5678_8888_9999", customer: john!)
john?.card = card

john = nil
card = nil


//闭包引起的自身强引用,使用捕获列表解决
var stu:Student? = Student()
stu?.closure()

stu = nil



