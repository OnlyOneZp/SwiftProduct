//
//  OperatorKongHeViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/26.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class OperatorKongHeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "空合运算符"
        self.view.backgroundColor = UIColor.white
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("空合运算符( a ?? b )将对可选类型 a 进行空判断，如果 a 包含一个值就进行解封，否则就返回一个默认值 b 。表达式 a 必须是 Optional 类型。默认值 b 的类型必须要和 a 存储值的类型保持一致\n\n")
        mulStr.append("空合运算符是对以下代码的简短表达方法:\n a != nil ? a! : b \n\n")
        mulStr.append("上述代码使用了三目运算符。当可选类型 a 的值不为空时，进行强制解封(a!)，访问 a 中的值;反之返 回默认值 b \n\n")
        
        
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
