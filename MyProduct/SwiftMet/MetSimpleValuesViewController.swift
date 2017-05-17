//
//  MetSimpleValuesViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/15.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class MetSimpleValuesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "简单值"
        self.view.backgroundColor = UIColor.white
        
        print("简单值-MetSimpleValuesViewController")
        
        //let 声明常量:你只需要决定(赋值)一次，但是需要使用很多次
        //var 声明变量
        let myConstant = 39
//        myVar = 20//错误，常量只能赋值一次
        print(myConstant)
        
        var myVariable = 40
        myVariable = 42 //正确
        print(myVariable)
        
        
        
        
        
        //声明的同时赋值的话，编译器会自动推断类型.如果初始值没有提供足够的信息(或者没有初始值)，那你需要在变量后面声明类型，用冒号分割
        let implicitInteger = 70 //Int
        let implicitDouble = 70.0 //Double
        let explicitDouble: Double = 70 //Double
        print(implicitInteger,implicitDouble,explicitDouble)
        
        
        
        //值永远不会被编译器隐式转换为其他类型.把一个值转换成其他类型，需要显式转换
        let label = "The width is"
        let width = 90
        let widthLabel = label + String(width)//正确
//        let widthLabel = label + width//错误，width编译器判断为Int，String无法直接拼接Int
        print(widthLabel)
        
        
        
        //把值写到括号中，并且在括号之前写一个反斜杠,可以把值转换成字符串
        let apples = 3
        let oranges = 5
        let appleSummary = "I have \(apples) apples"
        let fruitSummary = "I have \(apples + oranges) pieces of fruit"
        print(appleSummary,fruitSummary)
        
        
        //使用方括号 [] 来创建数组和字典，并使用下标或者键(key)来访问元素。最后一个元素后面允许有个逗号
        var shoppingList = ["test0","test1","test2","test3","test4"]
        shoppingList[1] = "other"
        
        var occupations = [
            "key0":"value0",
            "key1":"value1",
        ]
        occupations["otherKey"] = "otherValue"
        
        
        
        //要创建一个空数组或者字典，使用初始化语法
        let emptyAry = [String]()
        let emptyDictionAry = [String:Float]()
        print(emptyAry,emptyDictionAry)
        //如果类型信息可以被推断出来，你可以用 [] 和 [:] 来创建空数组和空字典
        shoppingList = []
        occupations = [:]
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("let 声明常量:你只需要决定(赋值)一次，但是需要使用很多次\nvar 声明变量\n\n")
        
        
        mulStr.append("声明的同时赋值的话，编译器会自动推断类型.如果初始值没有提供足够的信息(或者没有初始值)，那你需要在变量后面声明类型，用冒号分割\n")
        
        
        mulStr.append("值永远不会被编译器隐式转换为其他类型.把一个值转换成其他类型，需要显式转换\n\n")
        
        
        mulStr.append("把值写到括号中，并且在括号之前写一个反斜杠╲,可以把值转换成字符串\n\n")
        
        
        mulStr.append("使用方括号 [] 来创建数组和字典，并使用下标或者键(key)来访问元素。最后一个元素后面允许有个逗号\n\n")
        
            
        mulStr.append("要创建一个空数组或者字典，使用初始化语法\n\n")
            
            
        mulStr.append("如果类型信息可以被推断出来，你可以用 [] 和 [:] 来创建空数组和空字典\n\n")
        
        
        let textLabel = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        textLabel.numberOfLines = 0
        
        textLabel.text = mulStr as String
        
        self.view.addSubview(textLabel)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
