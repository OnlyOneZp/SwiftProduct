//
//  BasicsZhengShuViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicsZhengShuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "整数"
        self.view.backgroundColor = UIColor.white
        
        //可以访问不同整数类型的 min 和 max 属性来获取对应类型的最小值和最大值:
        let minValue = UInt8.min // minValue 为 0，是 UInt8 类型 let maxValue = UInt8.max // maxValue 为 255，是 UInt8 类型
        
        let mulStr = NSMutableString()
        
        mulStr.append("整数就是没有小数部分的数字，比如 42 和 -23 。整数可以是 有符号 (正、负、零)或者 无符号 (正、零)。\n\n")
        mulStr.append("Swift 提供了8，16，32和64位的有符号和无符号整数类型\n\n")
        mulStr.append("可以访问不同整数类型的 min 和 max 属性来获取对应类型的最小值和最大值\n\n")
        mulStr.append("Swift 提供了一个特殊的整数类型 Int，长度与当前平台的原生字长相同\n\n")
        mulStr.append("在32位平台上， Int 和 Int32 长度相同。\n\n")
        mulStr.append("在64位平台上， Int 和 Int64 长度相同。\n\n")
        mulStr.append("即使是在32位平 台上，Int 可以存储的整数范围也可以达到 -2,147,483,648 ~ 2,147,483,647\n\n")
        
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
