//
//  BasicsZhuShiViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicsZhuShiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "注释"
        self.view.backgroundColor = UIColor.white
        
        let mulStr = NSMutableString()
        
        mulStr.append("单行注释以双正斜杠( // )作为起始标记\n\n")
        mulStr.append("多行注释，其起始标记为单个正斜杠后跟随一个星号( /* )，终止标记为一个星号后跟随单个正斜杠(*/)\n\n")
        
        
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
