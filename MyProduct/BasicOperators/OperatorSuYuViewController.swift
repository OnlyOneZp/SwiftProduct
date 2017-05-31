//
//  OperatorSuYuViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/26.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class OperatorSuYuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "术语"
        self.view.backgroundColor = UIColor.white
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("运算符分为一元、二元和三元运算符\n\n")
        mulStr.append("一元运算符对单一操作对象操作（如 -a）。一元运算符分前置运算符和后置运算符，前置运算符需紧跟在操作对象之前（如 !b），后置运算符需紧跟在操作对象之后（如 c!）\n\n")
        mulStr.append("二元运算符操作两个操作对象（如 2 - 3），是中置的，因为他们出现在两个操作对象之间\n\n")
        mulStr.append("三元运算符操作三个操作对象，和 C 语言一样，Swift 只有一个三元运算符，就是三目运算符( a ? b : c)\n\n")
        mulStr.append("受运算符影响的值叫操作数，在表达式 1 + 2 中，加号 + 是二元运算符，它的两个操作数是值 1 和 2 \n\n")
        
        
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
