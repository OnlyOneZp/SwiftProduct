//
//  OperatorSanMuViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/26.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class OperatorSanMuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "三目运算符"
        self.view.backgroundColor = UIColor.white
        
        
        //三目运算符是以下代码的缩写形式:
//        if question {
//            answer1
//        } else {
//            answer2
//        }

        
        
        let mulStr = NSMutableString()
        
        mulStr.append("三目运算符的特殊在于它是有三个操作数的运算符，它的形式是 问题 ? 答案 1 : 答案 2 \n\n")
        mulStr.append("它简洁地表达根据 问题 成立与否作出二选一的操作。如果 问题 成立，返回 答案 1 的结果;反之返回 答案 2 的结果\n\n")
        mulStr.append("三目运算提供有效率且便捷的方式来表达二选一的选择。需要注意的事，过度使用三目运算符会使简洁的代码变的难懂。应避免在一个组合语句中使用多个三目运算符\n\n")
        
        
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
