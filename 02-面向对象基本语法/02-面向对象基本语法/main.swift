//
//  main.swift
//  02-面向对象基本语法
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Foundation

print("Hello, World!")

//class <#name#>: <#super class#> {
//    <#code#>
//}
//class BaseClass{
//    
//}

let person = Person() //默认构造器 
print(person.name)

print(person)
//person.description = ""

person.age = 30
print(person.birthYear)//读计算属性

person.birthYear = 1990
print(person.age) //写计算属性:间接设置其他的存储属性

//person.birthDay = "2月3号"


person.school?.name = "青云"
print(person.school!.name!)

let zhangsan = Person(name: "zhangsan")
let lisi = Person(name: "lisi", age: 20)
let wangwu = Person()

let stu = Student()
let stu1 = Student(name: "student")
let stu2 = Student(age: 20)
let stu3 = Student(name: "stu", age: 21)


zhangsan.eat()

Person.play()
Person.play1()

Student.play1()

zhangsan.eatSomething("豆浆", "油条")
zhangsan.eatSomething1(thing1: "面条", andThing2: "水果")
