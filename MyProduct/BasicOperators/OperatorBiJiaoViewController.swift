//
//  OperatorBiJiaoViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/26.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class OperatorBiJiaoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "比较运算符"
        self.view.backgroundColor = UIColor.white
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("所有标准 C 语言中的比较运算符都可以在 Swift 中使用\n\n")
        mulStr.append("等于( a == b )、不等于( a != b )、大于( a > b )、小于( a < b )、大于等于( a >= b )、小于等于( a <= b )\n\n")
        mulStr.append("Swift 也提供恒等( === )和不恒等( !== )这两个比较符来判断两个对象是否引用同一个对象实例\n\n")
        mulStr.append("每个比较运算都返回了一个标识表达式是否成立的布尔值\n\n")
        mulStr.append("Bool 不能被比较\n\n")
        mulStr.append("比较元组大小会按照从左到右、逐值比较的方式，直到发现有两个值不等时停止。如果所有的值都相等，那么这一对元组我们就称它们是相等的。\n\n")
        mulStr.append("Swift 标准库只能比较七个以内元素的元组比较函数。如果你的元组元素超过七个时，你需要自己实现比较运算 符\n\n")
        
        
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
