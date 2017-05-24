//
//  BasicsFengHaoViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicsFengHaoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "分号"
        self.view.backgroundColor = UIColor.white
        
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("与其他大部分编程语言不同，Swift 并不强制要求你在每条语句的结尾处使用分号( ; )，当然，你也可以按照 你自己的习惯添加分号。有一种情况下必须要用分号，即你打算在同一行内写多条独立的语句\n\n")
        
        
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
