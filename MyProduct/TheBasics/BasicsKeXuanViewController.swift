//
//  BasicsKeXuanViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicsKeXuanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "可选类型"
        self.view.backgroundColor = UIColor.white
        
        
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        // convertedNumber 被推测为类型 "Int?"， 或者类型 "optional Int"
        
        var serverResponseCode: Int? = 404
        // serverResponseCode 包含一个可选的 Int 值 404 
        serverResponseCode = nil
        // serverResponseCode 现在不包含值
        
        
        var surveyAnswer: String?
        // surveyAnswer 被自动设置为 nil
        
        if convertedNumber != nil {
            print("convertedNumber contains some integer value.")
        }
        // 输出 "convertedNumber contains some integer value."
        
        if convertedNumber != nil {
            print("convertedNumber has an integer value of \(convertedNumber!).")
        }
        // 输出 "convertedNumber has an integer value of 123."
        
//        if let constantName = someOptional {
//            statements
//        }
        
        if convertedNumber != nil {
            print("convertedNumber has an integer value of \(convertedNumber!).")
        }
        // 输出 "convertedNumber has an integer value of 123."
        
        if let actualNumber = Int(possibleNumber) {
            print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
        } else {
            print("\'\(possibleNumber)\' could not be converted to an integer")
        }
        // 输出 "'123' has an integer value of 123"
        
        if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
            
            print("\(firstNumber) < \(secondNumber) < 100")
        
        }
        // 输出 "4 < 42 < 100"
        if let firstNumber = Int("4") {
            if let secondNumber = Int("42") {
                if firstNumber < secondNumber && secondNumber < 100 {
                    print("\(firstNumber) < \(secondNumber) < 100")
                } }
        }
        // 输出 "4 < 42 < 100"
        
        let possibleString: String? = "An optional string."
        let forcedString: String! = possibleString! // 需要感叹号来获取值
        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString // 不需要感叹号
        
        print(forcedString, implicitString)
        
        if assumedString != nil {
            print(assumedString)
        }
        // 输出 "An implicitly unwrapped optional string."
        
        if let definiteString = assumedString {
            print(definiteString)
        }
        // 输出 "An implicitly unwrapped optional string
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("使用可选类型(optionals)来处理值可能缺失的情况\n\n")
        mulStr.append("问号暗示包含的值是可选类型，也就是说可能包含值也可能不包含值\n\n")
        mulStr.append("可以给可选变量赋值为 nil 来表示它没有值\n\n")
        mulStr.append("nil 不能用于非可选的常量和变量。如果你的代码中有常量或者变量需要处理值缺失的情况，请把它们声明成对应的可选类型\n\n")
        mulStr.append("如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为 nil \n\n")
        mulStr.append("Swift 的 nil 和 Objective-C 中的 nil 并不一样。在 Objective-C 中， nil 是一个指向不存在对象的指 针。在 Swift 中， nil 不是指针——它是一个确定的值，用来表示值缺失。任何类型的可选状态都可以被设 置为 nil ，不只是对象类\n\n")
        mulStr.append("if 语句以及强制解析\n\n")
        mulStr.append("你可以使用 if 语句和 nil 比较来判断一个可选值是否包含值\n\n")
        mulStr.append("当你确定可选类型确实包含值之后，你可以在可选的名字后面加一个感叹号( ! )来获取值。这个惊叹号表 示“我知道这个可选有值，请使用它。”这被称为可选值的强制解析(forced unwrapping)\n\n")
        mulStr.append("可选绑定\n\n")
        mulStr.append("使用可选绑定(optional binding)来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变 量。\n\n")
        mulStr.append("可选绑定可以用在 if 和 while 语句中，这条语句不仅可以用来判断可选类型中是否有值，同时可以将可选类型中的值赋给一个常量或者变量\n\n")
        mulStr.append("你可以包含多个可选绑定或多个布尔条件在一个 if 语句中，只要使用逗号分开就行。只要有任意一个可选绑定 的值为nil，或者任意一个布尔条件为false，则整个if条件判断为false\n\n")
        mulStr.append("隐式解析可选类型\n\n")
        mulStr.append("有时候在程序架构中，第一次被赋值之后，可以确定一个可选类型总会有值。在这种情况下，每次都要判断和解析可选值是非常低效的，因为可以确定它总会有值。\n\n")
        mulStr.append("这种类型的可选状态被定义为隐式解析可选类型(implicitly unwrapped optionals)。把想要用作可选的类型 的后面的问号( String? )改成感叹号( String! )来声明一个隐式解析可选类型\n\n")
        mulStr.append("一个隐式解析可选类型其实就是一个普通的可选类型，但是可以被当做非可选类型来使用，并不需要每次都使用解析来获取可选值\n\n")
        mulStr.append("如果你在隐式解析可选类型没有值的时候尝试取值，会触发运行时错误。和你在没有值的普通可选类型后面加一个惊叹号一样\n\n")
        mulStr.append("你仍然可以把隐式解析可选类型当做普通可选类型来判断它是否包含值\n\n")
        mulStr.append("你也可以在可选绑定中使用隐式解析可选类型来检查并解析它的值\n\n")
        mulStr.append("如果一个变量之后可能变成 nil 的话请不要使用隐式解析可选类型。如果你需要在变量的生命周期中判断是否 是 nil 的话，请使用普通可选类型\n\n")
        
        let textView = UITextView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        textView.endEditing(false)
        textView.font = UIFont.systemFont(ofSize: 15.0)
        textView.text = mulStr as String
        
        self.view.addSubview(textView)
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
