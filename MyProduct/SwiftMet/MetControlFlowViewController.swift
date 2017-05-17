//
//  MetControlFlowViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/15.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class MetControlFlowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "控制流"
        self.view.backgroundColor = UIColor.white
        
        
        //条件：if、switch
        //循环：for-in、for、while、repeat-while
        //包裹条件和循环变量括号可以省略，但是语句体的大括号是必须的
        let individuaScroes = [75,43,103,87,12]
        var teamScroe = 0
        for score in individuaScroes {
            if score > 50 {
                teamScroe += 3
            }
            else{
                teamScroe += 1
            }
        }
        print(teamScroe)
        
        //在if语句中，条件必须是一个布尔表达式---这意味着想if score {...}这样的代码将报错，而不会隐形地与0作对比

        //你可以一起使用if和let来出理值确实的情况。一个可选的值是一个具体的值或者是nil以表示值缺失。在类型后面加一个问号来标记这个变量的值是可选的
        var optionalString: String? = "hello"
        print(optionalString == nil)
        //如果变量的可选值是nil，条件会判断为false，大括号中的代码会被跳过。如果不是nil，会将值解包并赋给let后面的常量，这样代码快中就可以使用这个值了
        var optionalName:String? = "john Appleseed"
        var greeting = "Hello!"
        if let name = optionalName {
            greeting = "Hello, \(name)"
        }
        print(greeting)
        
        //另一种处理可选值的方法是通过使用 ?? 操作符来提供一个默认值。如果可选值缺失的话，可以使用默认值来代 替
        let nickName: String? = nil
        let fullName: String = "john Appleseed"
        let informalGreeting = "Hi,\(nickName ?? fullName)"
        print(informalGreeting)
        
        
        
        //switch 支持任意类型的数据以及各种比较操作---不仅仅是整数以及测试相等
        let vegetable = "red pepper"
        switch vegetable {
        case "celgry":
            print("Add some raisins and make ants on a log.")
        case "cucumber","watercress":
            print("That would make a good tea sandwich.")
        case let x where x.hasSuffix("pepper"):
            print("Is it a apicy \(x)?")
        default:
            print("Everything tastes good in soup.")
        }
        //注意let在例子中是如何使用的，他将匹配等式的值赋给常量x
        //运行switch中匹配到的子句之后，程序会退出switch语句，并不会继续向下运行，所以不需要在句尾写break
        
        
        
        //for-in遍历
        let interestingNumbers = [
            "Prime": [2,3,7,11,13],
            "Fibonacci": [1,1,2,3,5,8],
            "Square": [1,4,9,16,25],
        ]
        
        var largest = 0
        var species:String? = nil
        
        for (kind,numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                    species = kind
                }
            }
        }
        print(species,largest)
        
        
        
        //使用while来重复运行一段代码直到不满足条件，循环条件也可以在句尾，保证能至少循环一次
        var n = 2
        while n < 100 {
            n = n * 2
        }
        print(n)
        
        var total = 0
        for i in 0..<4 {
            total += i
        }
        print(total)
        //使用 ..< 创建的范围不包含上界，如果包含的话需要使用 ...
        
        
        optionalString = ""
        optionalName = ""
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
