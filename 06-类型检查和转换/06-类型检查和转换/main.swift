//
//  main.swift
//  06-类型检查和转换
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Foundation

print("Hello, World!")

//AnyObject:任何对象类型,类似于OC的id
//Any:任何类型,包括基本数据类型和对象类型,以及函数类型

var anyObjArr:[AnyObject] = []

anyObjArr.append(NSObject())

let person = Person()
anyObjArr.append(person)

anyObjArr.append(10)

var anyArr:[Any] = []


let closure = {print("any")}
//anyObjArr.append(closure)
anyArr.append(closure)

//is :判断是不是某种类型,类似于OC的isKindOfClass

for obj in anyObjArr {
    if obj is Person {
        print("Person类的对象")
    }
}


//as: 
//as? 表示父类向子类转换,如果成功则转换为子类的对象,否则返回nil
//as! 强制向子类转换,如果不成功则崩溃
//如果不确定时,不要用as!
let stu1 = Student(stuNo: 1000)
let stu2 = Student(stuNo: 1001)
let stu3 = Student(stuNo: 1002)
let arr:[Person] = [person,stu1,stu2,stu3]
let stuArr:[Person] = [stu1,stu2,stu3]
for value in arr {
    if let stu = value as? Student {
        print("学号为:\(stu.stuNo)")
    } else {
        print("不是学生")
    }
}

for value in arr {
    let stu = value as! Student
    print("学号为:\(stu.stuNo)")
}