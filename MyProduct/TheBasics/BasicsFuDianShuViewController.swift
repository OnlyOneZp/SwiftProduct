//
//  BasicsFuDianShuViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicsFuDianShuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "浮点数"
        self.view.backgroundColor = UIColor.white
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("浮点数是有小数部分的数字\n\n")
        mulStr.append("浮点类型比整数类型表示的范围更大，可以存储比 Int 类型更大或者更小的数字。Swift 提供了两种有符号浮 点数类型\n\n")
        mulStr.append("Double表示64位浮点数。当你需要存储很大或者很高精度的浮点数时请使用此类型\n\n")
        mulStr.append("Float表示32位浮点数。精度要求不高的话可以使用此类型\n\n")
        mulStr.append("Double 精确度很高，至少有15位数字，而 Float 只有6位数字\n\n")

        
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
