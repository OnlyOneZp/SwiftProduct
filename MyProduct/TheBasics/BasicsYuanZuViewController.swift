//
//  BasicsYuanZuViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicsYuanZuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "元组"
        self.view.backgroundColor = UIColor.white
        
        let http404Error = (404, "Not Found")
        // http404Error 的类型是 (Int, String)，值是 (404, "Not Found")
        
        //你可以将一个元组的内容分解(decompose)成单独的常量和变量，然后你就可以正常使用它们了
        let (statusCode, statusMessage) = http404Error
        print("The status code is \(statusCode)")
        // 输出 "The status code is 404"
        print("The status message is \(statusMessage)")
        // 输出 "The status message is Not Found"
        
        //如果你只需要一部分元组值，分解的时候可以把要忽略的部分用下划线( _ )标记
        let (justTheStatusCode, _) = http404Error
        print("The status code is \(justTheStatusCode)")
        // 输出 "The status code is 404"
        
        //此外，你还可以通过下标来访问元组中的单个元素，下标从零开始:
        print("The status code is \(http404Error.0)")
        // 输出 "The status code is 404"
        print("The status message is \(http404Error.1)")
        // 输出 "The status message is Not Found"

        //你可以在定义元组的时候给单个元素命名:
        let http200Status = (statusCode: 200, description: "OK")
        
        //给元组中的元素命名后，你可以通过名字来获取这些元素的值
        print("The status code is \(http200Status.statusCode)")
        // 输出 "The status code is 200"
        print("The status message is \(http200Status.description)")
        // 输出 "The status message is OK"
        
        //元组在临时组织值的时候很有用，但是并不适合创建复杂的数据结构。如果你的数据结构并不是临时使用，请使用类或者结构体而不是元组
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("元组(tuples)把多个值组合成一个复合值。元组内的值可以是任意类型，并不要求是相同类型\n\n")
        mulStr.append("你可以把任意顺序的类型组合成一个元组，这个元组可以包含所有类型。只要你想，你可以创建一个类型为（Int， Int， Int）或者（String， Int）或者其他任何你想要的组合的元组\n\n")
        mulStr.append("你可以将一个元组的内容分解(decompose)成单独的常量和变量，然后你就可以正常使用它们了\n\n")
        mulStr.append("如果你只需要一部分元组值，分解的时候可以把要忽略的部分用下划线( _ )标记\n\n")
        mulStr.append("此外，你还可以通过下标来访问元组中的单个元素，下标从零开始\n\n")
        mulStr.append("你可以在定义元组的时候给单个元素命名\n\n")
        mulStr.append("给元组中的元素命名后，你可以通过名字来获取这些元素的值\n\n")
        mulStr.append("元组在临时组织值的时候很有用，但是并不适合创建复杂的数据结构。如果你的数据结构并不是临时使用，请使用类或者结构体而不是元组\n\n")
        
        
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
