//
//  BasicsCuoWuViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicsCuoWuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "错误处理"
        self.view.backgroundColor = UIColor.white
        
        
        func canThrowAnError() throws { // 这个函数有可能抛出错误
        }
        
        
        do {
            try canThrowAnError() // 没有错误消息抛出
        } catch {
            // 有一个错误消息抛出
        }
        
//        func makeASandwich() throws {
//            // ...
//        }
//        do {
//            try makeASandwich()
//            eatASandwich()
//        } catch SandwichError.outOfCleanDishes {
//            washDishes()
//        } catch SandwichError.missingIngredients(let ingredients) {
//            buyGroceries(ingredients)
//        }

        
        let mulStr = NSMutableString()
        
        mulStr.append("使用 错误处理(error handling) 来应对程序执行中可能会遇到的错误条件\n\n")
        mulStr.append("错误处理可以推断失败的原因\n\n")
        mulStr.append("当一个函数遇到错误条件，它能报错。调用函数的地方能抛出错误消息并合理处理\n\n")
        mulStr.append("一个函数可以通过在声明中添加   关键词来抛出错误消息。当你的函数能抛出错误消息时, 你应该在表达式中前置关键词\n\n")
        mulStr.append("一个 语句创建了一个新的包含作用域,使得错误能被传播到一个或多个从句\n\n")

        
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
