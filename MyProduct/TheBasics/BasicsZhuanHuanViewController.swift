//
//  BasicsZhuanHuanViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicsZhuanHuanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "数值型类型转换"
        self.view.backgroundColor = UIColor.white
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("通常来讲，即使代码中的整数常量和变量已知非负，也请使用 Int 类型。总是使用默认的整数类型可以保证你的 整数常量和变量可以直接被复用并且可以匹配整数类字面量的类型推断\n\n")
        mulStr.append("使用显式指定长度的类型可以及时发现值溢出并且可以暗示正在处理特殊数据.\n\n")
        mulStr.append("不同整数类型的变量和常量可以存储不同范围的数字。 Int8 类型的常量或者变量可以存储的数字范围是 -128 ~ 1 27 ，而 UInt8 类型的常量或者变量能存储的数字范围是 0 ~ 255 。如果数字超出了常量或者变量可存储的范围，编译的时候会报错\n\n")
        mulStr.append("由于每种整数类型都可以存储不同范围的值，所以你必须根据不同情况选择性使用数值型类型转换。这种选择性使用的方式，可以预防隐式转换的错误并让你的代码中的类型转换意图变得清晰。\n\n")
        mulStr.append("要将一种数字类型转换成另一种，你要用当前值来初始化一个期望类型的新数字，这个数字的类型就是你的目标类型\n\n")
        mulStr.append("整数和浮点数的转换必须显式指定类型,加号两边的数类型须相同。如果不进行 转换，两者无法相加。\n\n")
        mulStr.append("浮点数到整数的反向转换同样行，整数类型可以用 Double 或者 Float 类型来初始化\n\n")
        mulStr.append("当用这种方式来初始化一个新的整数值时，浮点值会被截断。也就是说 4.75 会变成 4 ， -3.9 会变成 -3\n\n")

        
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
