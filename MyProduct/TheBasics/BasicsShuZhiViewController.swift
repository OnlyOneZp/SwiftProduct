//
//  BasicsShuZhiViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicsShuZhiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "数值型字面量"
        self.view.backgroundColor = UIColor.white
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("整数字面量可以被写作:\n\n")
        mulStr.append("一个十进制数，没有前缀\n\n")
        mulStr.append("一个二进制数，前缀是 0b\n\n")
        mulStr.append("一个八进制数，前缀是 0o\n\n")
        mulStr.append("一个十六进制数，前缀是 0x\n\n")
        mulStr.append("下面的所有整数字面量的十进制值都是: 17\n")
        mulStr.append("let decimalInteger = 17\nlet binaryInteger = 0b10001\nlet octalInteger = 0o21\nlet hexadecimalInteger = 0x11")

        mulStr.append("浮点字面量可以是十进制(没有前缀)或者是十六进制(前缀是 0x )。小数点两边必须有至少一个十进制数 字(或者是十六进制的数字)\n\n")
        mulStr.append("十进制浮点数也可以有一个可选的指数(exponent)，通过大写或者小写的 e 来 指定;十六进制浮点数必须有一个指数，通过大写或者小写的 p 来指定\n\n")
        mulStr.append("如果一个十进制数的指数为 exp ，那这个数相当于基数和10^exp的乘积:\n")
        mulStr.append("1.25e2 表示 1.25 × 10^2，等于 125.0\n1.25e-2 表示 1.25 × 10^-2，等于 0.0125 \n\n")
        mulStr.append("如果一个十六进制数的指数为 exp ，那这个数相当于基数和2^exp的乘积:\n")
        mulStr.append("0xFp2 表示 15 × 2^2，等于 60.0 \n0xFp-2 表示 15 × 2^-2，等于 3.75\n\n")
        mulStr.append("数值类字面量可以包括额外的格式来增强可读性。整数和浮点数都可以添加额外的零并且包含下划线，并不会影响字面量\n")
        mulStr.append("let paddedDouble = 000123.456\nlet oneMillion = 1_000_000\nlet justOverOneMillion = 1_000_000.000_000_1\n")

        
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
