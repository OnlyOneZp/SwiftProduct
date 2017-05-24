//
//  BasicsChangLiangViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicsChangLiangViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "常量和变量"
        self.view.backgroundColor = UIColor.white
        
        //常量和变量必须在使用前声明，用 let 来声明常量，用 var 来声明变量
        let maximumNumberOfLoginAttempts = 10
        var currentLoginAttempt = 0
        //这两行代码可以被理解为:“声明一个名字是 maximumNumberOfLoginAttempts 的新常量，并给它一个值 10 。然后，声明一个名字是rrentLoginAttempt 的变量并将它的值初始化为 0 。”
        //在这个例子中，允许的最大尝试登录次数被声明为一个常量，因为这个值不会改变。当前尝试登录次数被声明为一个变量，因为每次尝试登录失败的时候都需要增加这个值。
        currentLoginAttempt += 1
        print(maximumNumberOfLoginAttempts,currentLoginAttempt)
        
        //可以在一行中声明多个常量或者多个变量，用逗号隔开
        var x = 0.0, y = 0.0, z = 0.0
        
        
        //当你声明常量或者变量的时候可以加上类型标注(type annotation)，说明常量或者变量中要存储的值的类 型。如果要添加类型标注，需要在常量或者变量名后面加上一个冒号和空格，然后加上类型名称
        //声明中的冒号代表着“是...类型”
        var welcomeMessage: String
        
        //可以在一行中定义多个同样类型的变量，用逗号分割，并在最后一个变量名之后添加类型标注
        var red, green, blue: Double

        //可以用任何你喜欢的字符作为常量和变量名
        //常量与变量名不能包含数学符号，箭头，保留的(或者非法的)Unicode 码位，连线与制表符。也不能以数字开 头，但是可以在常量与变量名的其他地方包含数字
        //一旦你将常量或者变量声明为确定的类型，你就不能使用相同的名字再次进行声明，或者改变其存储的值的类型。同时，你也不能将常量与变量进行互转
        
        /* 这是第一个多行注释的开头
         /* 这是第二个被嵌套的多行注释 */
         这是第一个多行注释的结尾 */
        
        let mulStr = NSMutableString()
        
        mulStr.append("声明常量和变量\n\n")
        mulStr.append("常量和变量必须在使用前声明，用 let 来声明常量，用 var 来声明变量\n\n")
        mulStr.append("可以在一行中声明多个常量或者多个变量，用逗号隔开\n\n")
        mulStr.append("类型标注\n\n")
        mulStr.append("当你声明常量或者变量的时候可以加上类型标注(type annotation)，说明常量或者变量中要存储的值的类 型。如果要添加类型标注，需要在常量或者变量名后面加上一个冒号和空格，然后加上类型名称\n\n")
        mulStr.append("声明中的冒号代表着“是...类型”\n\n")
        mulStr.append("常量和变量的命名\n\n")
        mulStr.append("可以用任何你喜欢的字符作为常量和变量名\n\n")
        mulStr.append("常量与变量名不能包含数学符号，箭头，保留的(或者非法的)Unicode 码位，连线与制表符。也不能以数字开 头，但是可以在常量与变量名的其他地方包含数字\n\n")
        mulStr.append("一旦你将常量或者变量声明为确定的类型，你就不能使用相同的名字再次进行声明，或者改变其存储的值的类型。同时，你也不能将常量与变量进行互转\n\n")
        mulStr.append("输出常量和变量\n\n")
        mulStr.append("可以用 print(_:separator:terminator:) 函数来输出当前常量或变量的值\n\n")
        mulStr.append("print(_:separator:terminator:) 是一个用来输出一个或多个值到适当输出区的全局函数\n\n")
        mulStr.append("separator 和 terminator 参数具有默认 值，因此你调用这个函数的时候可以忽略它们。默认情况下，该函数通过添加换行符来结束当前行。如果不想换 行，可以传递一个空字符串给 terminator 参数--例如， print(someValue, terminator:“”) \n\n")
        mulStr.append("Swift 用字符串插值(string interpolation)的方式把常量名或者变量名当做占位符加入到长字符串中，Swift 会用当前常量或变量的值替换这些占位符。将常量或变量名放入圆括号中，并在开括号前使用反斜杠将其转义\n\n")
        
        
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
