//
//  BasicsLeiXingViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicsLeiXingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "类型安全和类型推断"
        self.view.backgroundColor = UIColor.white
        
        //如果你给一个新常量赋值   并且没有标明类型，Swift 可以推断出常量类型是   ，因为你给它赋 的初始值看起来像一个整数
        let meaningOfLife = 42
        // meaningOfLife 会被推测为 Int 类型
        //同理，如果你没有给浮点字面量标明类型，Swift 会推断你想要的是 Double
        let pi = 3.14159
        // pi 会被推测为 Double 类型
        
        print(meaningOfLife,pi)
        
        
        //如果表达式中同时出现了整数和浮点数，会被推断为 Double 类型:
        let anotherPi = 3 + 0.14159
        // anotherPi 会被推测为 Double 类型
        //原始值 3 没有显式声明类型，而表达式中出现了一个浮点字面量，所以表达式会被推断为 Double 类型。
        print(anotherPi)
        
        let mulStr = NSMutableString()
        
        mulStr.append("Swift 是一个类型安全(type safe)的语言\n\n")
        mulStr.append("如果你没有显式指定类型，Swift 会使用类型推断(type inference)来选择合适的类型。有 了类型推断，编译器可以在编译代码的时候自动推断出表达式的类型\n\n")
        mulStr.append("因为有类型推断，和 C 或者 Objective-C 比起来 Swift 很少需要声明类型\n\n")
        mulStr.append("当你在声明常量或者变量的时候赋给它们一个字面 量(literal value 或 literal)即可触发类型推断。(字面量就是会直接出现在你代码中的值，比如 42 和3.14159)\n\n")
        mulStr.append("当推断浮点数的类型时，Swift 总是会选择 Double 而不是 Float\n\n")

        
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
