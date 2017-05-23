//
//  MetErrorHandlingViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/15.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class MetErrorHandlingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "错误处理"
        self.view.backgroundColor = UIColor.white
        
        //使用采用 Error 协议的类型来表示错误
        enum PrinterError: Error {
            case OutOfPaper
            case NoToner
            case OnFire
        }
        
        //使用 throw 来抛出一个错误并使用 throws 来表示一个可以抛出错误的函数。如果在函数中抛出一个错误，这个函数会立即返回并且调用该函数的代码会进行错误处理
        func send(job: Int, toPrinter printerName: String) throws -> String {
            if printerName == "Naver Has Toner" {
                throw PrinterError.NoToner
            }
            return "Job sent"
        }
        
        //有多种方式可以用来进行错误处理。一种方式是使用 do-catch 。在 do 代码块中，使用 try 来标记可以抛出错误的代码。在 catch 代码快中，除非你另外命名，否则错误会自动命名为 error
        do {
            let printerPesponse = try send(job: 1040, toPrinter: "Bi Sheng")
            print(printerPesponse)
        } catch  {
            print(error)
        }
        //可以使用多个 catch 块来处理特定的错误。参照 switch 中的 case风格来写catch
        do {
            let printfResponse = try send(job: 1440, toPrinter: "Dutenberg")
            print(printfResponse)
        } catch PrinterError.OnFire {
            print("I'll just put this over here, with the rest of the fire.")
        } catch let printerError as PrinterError {
            print("Printer error: \(printerError)")
        } catch {
            print(error)
        }
        
        //另一种处理错误的方式使用 try？将结果转换为可选的。如果函数抛出错误，该错误会被抛弃并且结果为 nil。否则的话，结果会是一个包含函数返回值的可选值
        let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
        let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")
        print(printerSuccess, printerFailure)
        
        //使用 defer 代码块来表示在函数返回前，函数中最后执行的代码。无论函数是否会抛出错误，这段代码都将执行。使用 defer ，可以把函数调用之初就要执行的代码和函数调用结束时扫尾的代码写在一起，虽然这两者的执行时机截然不同
        var fridgeIsOpen = false
        let fridgeContent = ["milk", "eggs", "leftovers"]
        
        func fridgeContains (_ food: String) -> Bool {
            fridgeIsOpen = true
            defer {
                fridgeIsOpen = false
            }
            
            let result = fridgeContent.contains(food)
            return result
        }
        fridgeContains("bannana")
        print(fridgeIsOpen)
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("使用采用 Error 协议的类型来表示错误\n\n")
        mulStr.append("使用 throw 来抛出一个错误并使用 throws 来表示一个可以抛出错误的函数。如果在函数中抛出一个错误，这个函数会立即返回并且调用该函数的代码会进行错误处理\n\n")
        mulStr.append("有多种方式可以用来进行错误处理。一种方式是使用 do-catch 。在 do 代码块中，使用 try 来标记可以抛出错误的代码。在 catch 代码快中，除非你另外命名，否则错误会自动命名为 error\n\n")
        mulStr.append("可以使用多个 catch 块来处理特定的错误。参照 switch 中的 case风格来写catch\n\n")
        mulStr.append("另一种处理错误的方式使用 try？将结果转换为可选的。如果函数抛出错误，该错误会被抛弃并且结果为 nil。否则的话，结果会是一个包含函数返回值的可选值\n\n")
        mulStr.append("使用 defer 代码块来表示在函数返回前，函数中最后执行的代码。无论函数是否会抛出错误，这段代码都将执行。使用 defer ，可以把函数调用之初就要执行的代码和函数调用结束时扫尾的代码写在一起，虽然这两者的执行时机截然不同\n\n")
        
        
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
