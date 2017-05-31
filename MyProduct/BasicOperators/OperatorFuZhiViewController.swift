//
//  OperatorFuZhiViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/26.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class OperatorFuZhiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "赋值运算符"
        self.view.backgroundColor = UIColor.white
        
        
        let mulStr = NSMutableString()
    
        mulStr.append("赋值运算符( a = b )，表示用 b 的值来初始化或更新 a 的值\n\n")
        mulStr.append("如果赋值的右边是一个多元组，它的元素可以马上被分解成多个常量或变量\n\n")
        mulStr.append("C 语言和 Objective-C 赋值运算后会返回一个 Bool 值,与 C 语言和 Objective-C 不同，Swift 的赋值操作并不返回任何值\n\n")
        
        
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
