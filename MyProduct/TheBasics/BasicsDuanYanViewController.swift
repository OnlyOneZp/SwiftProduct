//
//  BasicsDuanYanViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicsDuanYanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "断言"
        self.view.backgroundColor = UIColor.white
        
        
        let age = 3
        assert(age >= 0, "A person's age cannot be less than zero")
        // 因为 age < 0，所以断言会触发
        
        let mulStr = NSMutableString()
        
        mulStr.append("可选类型可以让你判断值是否存在，你可以在代码中优 地处理值缺失的情况。然而，在某些情况下，如果值缺 失或者值并不满足特定的条件，你的代码可能没办法继续执行。这时，你可以在你的代码中触发一个 断言(asse rtion) 来结束代码运行并通过调试来找到值缺失的原因。\n\n")
        mulStr.append("使用断言进行调试\n\n")
        mulStr.append("断言会在运行时判断一个逻辑条件是否为 true 。从字面意思来说，断言“断言”一个条件是否为真。你可以使 用断言来保证在运行其他代码之前，某些重要的条件已经被满足。如果条件判断为 true ，代码运行会继续进 行;如果条件判断为 false ，代码执行结束，你的应用被终止\n\n")
        mulStr.append("可以使用全局 assert(_:_:file:line:) 函数来写一个断言\n\n")
        mulStr.append("向这个函数传入一个结果为 true 或者 false 的表达式以及一条信息，当表达式的结果为 false 的时候这条信息会被显示\n\n")
        mulStr.append("当代码使用优化编译的时候，断言将会被禁用\n\n")
        mulStr.append("何时使用断言\n\n")
        mulStr.append("当条件可能为假时使用断言，但是最终一定要保证条件为真，这样你的代码才能继续运行。断言的适用情景:\n\n")
        mulStr.append("整数类型的下标索引被传入一个自定义下标实现，但是下标索引值可能太小或者太大\n\n")
        mulStr.append("需要给函数传入一个值，但是非法的值可能导致函数不能正常执行\n\n")
        mulStr.append("一个可选值现在是 nil ，但是后面的代码运行需要一个非 nil 值\n\n")

        
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
