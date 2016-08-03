//
//  Student.swift
//  02-面向对象基本语法
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Cocoa


//构造器的自动继承规则:(默认子类不会继承父类的构造器)
//1.如果子类的新引入的属性都有默认值,且没有自定义的指定构造器,那么会自动继承父类所有的指定构造器
//2.如果子类实现(包括重写和自动继承)了父类所有的指定构造器,则会自动继承所有的便利构造器
class Student: Person {
    var stuNo:Int = 1001
    
//    init(stuNo:Int) {
//        self.stuNo = stuNo //1.初始化自身扩展属性
//        super.init(name:"xuesheng")    //2.初始化父类
//        self.name = "学生" //3.对父类的属性进一步定制
//        
//        //如果没有第3步,则第二步super.init()可以省略
//    }
//    
//    required init(name: String) {
//        self.stuNo = 1000
//        super.init()
//        self.name = name
//    }
    
    override class func play1(){
        print("子类玩")
    }
    
//    override func eat() {
//        print("子类的吃")
//    }
}
