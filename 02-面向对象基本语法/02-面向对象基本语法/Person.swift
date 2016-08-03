//
//  Person.swift
//  02-面向对象基本语法
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import Cocoa

//final 修饰类,则此类不可以有子类
class Person: NSObject {
    //属性:
    //OC @property (nonatomic,strong) NSString *name;
    //从内存上分:存储属性和计算属性
    var name = "moumou" //如果属性没有默认值,则必须有构造器
    var age:Int = 0 {
        //属性观察器
        willSet{//将要设置
            print("年龄将被设置为:\(newValue)")
        }
        didSet{//已经设置过 ,didSet可以完成OC里面重写setter方法的功能
            print("年龄原来的值:\(oldValue)")
        }
    }
    
    override var description: String{//重写description属性,用于自定义打印对象,类似OC的重写description方法
//        return "我是一个人"
        return "我的信息:\(name),\(age)"
    }
    
    var birthYear:Int {
        //可读写计算属性:有getter和setter方法
        set{//默认参数是newValue
            age = NSDate.thisYear - newValue
        }
        get{
            return NSDate.thisYear - age
        }
        //只读计算属性:没有setter,get关键字和{}可以省掉
//        get{
//            
//        }
        
    }
    
    //属性从是否可读写来分:变量属性和常量属性
    let birthDay = "1月1号" //相当于OC的readonly属性,没有setter方法
    
    //lazy延迟存储属性:第一次访问时才会赋值
    lazy var school:School? = {
        //复杂的耗时的操作
        //....
        
        let sch = School()
        
        return sch
    }()//()表示立即执行闭包
    
    
    //构造器
    //指定构造器:必须初始化所有没有默认值的属性,必须向上代理到父类的指定构造器
    override init() {
        name = "某某"
        age = 18
    }
    
    required init(name:String) {//必要构造器:子类必须实现(包括自动继承或者重写)
        self.name = name
    }
//    init(name:String,age:Int) {
//        self.name = name
//        self.age = age
//        
//        //super.init() //会自动调用
//    }
    
    //便利构造器
    convenience init(age:Int) {
        self.init() //横向代理到其他构造器,最终必须导致指定构造器被调用
        self.age = age
    }
    convenience init(name:String,age:Int) {
        self.init(age:age)
        self.name = name
    }
    
    
    //方法:实例方法和类方法
    //默认就是实例方法
    final func eat(){//final修饰的方法不能被重写
        print("吃东西")
    }
    //方法的外部参数名和局部参数名规则同函数
    func eatSomething(thing1:String,_ thing2:String){
        print("吃\(thing1)和\(thing2)")
    }
    func eatSomething1(thing1 thing1:String,andThing2 thing2:String){
        print("吃\(thing1)和\(thing2)")
    }
    //类方法:static修饰的不能被子类重写,class可以被重写
    static func play(){
        print("玩")
    }
    
    class func play1(){
        print("玩游戏")
    }
}
