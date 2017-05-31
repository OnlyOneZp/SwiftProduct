//
//  OperatorSuanShuViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/26.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class OperatorSuanShuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "算术运算符"
        self.view.backgroundColor = UIColor.white
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("Swift 中所有数值类型都支持了基本的四则算术运算符: + - * /\n\n")
        mulStr.append("与 C 语言和 Objective-C 不同的是，Swift 默认情况下不允许在数值运算中出现溢出情况。但是你可以使用 Swift 的溢出运算符来实现溢出运算(如 a &+ b )\n\n")
        mulStr.append("加法运算符也可用于 String 的拼接\n\n")
        mulStr.append("求余运算符\n\n")
        mulStr.append("求余运算符( a % b )是计算 b 的多少倍刚刚好可以容入 a ，返回多出来的那部分(余数)\n\n")
        mulStr.append("在对负数 b 求余时， b 的符号会被忽略。这意味着 a % b 和 a % -b 的结果是相同的\n\n")
        mulStr.append("数值的正负号可以使用前缀 - (即一元负号符)来切换\n\n")
        mulStr.append("一元正号符( + )不做任何改变地返回操作数的值\n\n")
        
        
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
