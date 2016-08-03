
//
//  main.swift
//  01-闭包
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Foundation

print("Hello, World!")


//OC的block
//void (^blk)() = ^返回值类型(参数列表){执行体}
//int (^add)(int,int) = ^int(int x,int y){return x+y}

//swift的闭包
//无参数无返回值闭包
let closure = {print("hello,闭包!")}
closure()

//in关键字说明后面是闭包的执行体
//let add:(Int,Int)->Int = {(x:Int,y:Int)->Int in return x+y}
let add = {(x:Int,y:Int)->Int in return x+y}

print(add(3,5))

//简化:单表达式隐式返回,可以省略return和返回值类型
let add1 = {(x:Int,y:Int) in x+y}
print(add1(3,5))

//参数缩写
//$0,$1,...分别代表第0个参数,第1个参数,...以此类推
let add2:(Int,Int)->Int = {$0+$1}

let numArr = [-3,6,11,-5]
//let sortedArr = numArr.sort { (val1, val2) -> Bool in
//    return val1>val2
//}
//let sortedArr = numArr.sort({(val1,val2) in val1>val2})
//let sortedArr = numArr.sort({$0>$1})
let sortedArr = numArr.sort(<)//> < 对应的是一个运算符函数,所以相当于传入了一个闭包
print(sortedArr)

//尾随闭包:
//function(参数1,...,{闭包执行体}) ==> function(参数1,...){闭包执行体}

//数组的map方法接受一个闭包参数,这个闭包定义了一个规则,数组的每个元素都会按照这个规则做映射,最终所有的映射结果组成新的数组,返回
let nums = [23,689,101]
let digitDict = [0:"zero",1:"one",2:"two",3:"three",4:"four",
                 5:"five",6:"six",7:"seven",8:"eight",9:"nine"]
let EnglishNums = nums.map{ (var num) -> String in
    var output = ""
    
    while num > 0{//最终每一位都转换完成后num == 0
        let key = num % 10
        output = digitDict[key]! + output
        num = num/10
    }
    
    return output
}

print(EnglishNums)

//闭包可以捕获上下文的变量,即使超出作用域,也可以使用
func makeIncrementor(amount:Int)-> ()->Int {
    var runningTotal = 0
    
    func increment()->Int{
        runningTotal += amount
        
        return runningTotal
    }
    
    return increment
}

let incrementByTen = makeIncrementor(10)

print("incrementByTen >>>>> \(incrementByTen())")
print("incrementByTen >>>>> \(incrementByTen())")
print("incrementByTen >>>>> \(incrementByTen())")
print("incrementByTen >>>>> \(incrementByTen())")


let incrementBySeven = makeIncrementor(7)
print("incrementBySeven >>>>> \(incrementBySeven())")
print("incrementBySeven >>>>> \(incrementBySeven())")
print("incrementBySeven >>>>> \(incrementBySeven())")
print("incrementBySeven >>>>> \(incrementBySeven())")

//上面的两个闭包各自捕获各自的runningTotal和amount,不会互相影响


//闭包是引用类型,所以alsoincrementByTen和incrementByTen指向同一块内存,runningTotal也是同一个,所以是在上面的基础上递增
let alsoincrementByTen = incrementByTen
print("alsoincrementByTen >>>>> \(alsoincrementByTen())")

