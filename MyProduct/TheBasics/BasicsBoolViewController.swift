//
//  BasicsBoolViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicsBoolViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "布尔值"
        self.view.backgroundColor = UIColor.white
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("Swift 有一个基本的布尔(Boolean)类型，叫做 Bool 。布尔值指逻辑上的值，因为它们只能是真或者假。Swift 有两个布尔常量，true 和 false\n\n")
        mulStr.append("orangesAreOrange 和 turnipsAredelicious 的类型会被推断为 Bool ,，因为它们的初值是布尔字面量。就像之前提到的 Int 和 Double 一样，如果你创建变量的时候给它们赋 true 和 false ,那你不需要将常量或者变量声明为 Bool 类型\n\n")

        
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
