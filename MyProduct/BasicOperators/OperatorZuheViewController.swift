//
//  OperatorZuheViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/26.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class OperatorZuheViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "组合赋值运算符"
        self.view.backgroundColor = UIColor.white
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("如同 C 语言，Swift 也提供把其他运算符和赋值运算( = )组合的组合赋值运算符，组合加运算( += )是其中 一个例子\n\n")
        mulStr.append("表达式 a += 2 是 a = a + 2 的简写，一个组合加运算就是把加法运算和赋值运算组合成进一个运算符里，同 时完成两个运算任务\n\n")
        mulStr.append("复合赋值运算没有返回值， let b = a += 2 这类代码是错误。这不同于上面提到的自增和自减运算符\n\n")
        
        
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
