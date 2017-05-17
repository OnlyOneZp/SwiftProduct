//
//  MetFunctionsAndClosuresViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/15.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class MetFunctionsAndClosuresViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "函数和闭包"
        self.view.backgroundColor = UIColor.white
        
        //函数和闭包
        //使用func来声明一个函数，使用名字和参数来调用函数。使用->来指定函数返回值的类型
        //使用func来声明一个函数
        func greet(person: String,day: String) -> String {
            return "Hello \(person),today is \(day)."
        }
        //func great见下
        let something = greet(person: "Bob", day: "Tuesday")
        print(something)
        
        //默认情况下，函数使用它们的参数名称作为它们参数的标签，在参数名称前可以自定义参数标签，或者使用 _ 表示不使用参数标签
        //声明一个函数，使用 _ 表示不使用参数标签
        func greetway(_ person: String,on day: String) -> String {
            return "Hello \(person),today is \(day)."
        }
        let other = greetway("Jonry", on: "Wednesday")
        print(other)
        
        //使用元组来让一个函数返回多个值。该元组的元素可以用名称或数字来表示
        //声明一个函数，使用元组来让一个函数返回多个值。该元组的元素可以用名称或数字来表示
        func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
            
            var min = scores[0]
            var max = scores[0]
            var sum = 0
            
            for score in scores {
                if score > max {
                    max = score
                }
                else if score < min{
                    min = score
                }
                
                sum += score
            }
            
            return (min, max, sum)
            
        }
        let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
        print(statistics.max, statistics.min, statistics.sum)
        
        //函数可以带有可变个数的参数，这些参数在函数内表现为数组的形式
        //声明一个函数，函数可以带可变个数的参数，这些参数在函数内表现为数组的形式
        func sumOf(numbers: Int...) -> Int {
            
            var sum = 0
            
            for number in numbers {
                sum += number
            }
            
            return sum
        }
        let sumOne = sumOf()
        let sumOther = sumOf(numbers: 42, 234, 33)
        print(sumOne, sumOther)
        
        //函数可以嵌套。被嵌套的函数可以访问外侧函数的变量，你可以使用嵌套函数来重构一个太长或者太复杂的函数
        //声明一个函数，函数存在嵌套
        func returnFifteen() -> Int {
            
            var y = 10
            
            func add(){
                y += 5
            }
            
            add()
            
            return y
        }
        let reFifteen = returnFifteen()
        print(reFifteen)
        
        //函数是第一等类型，这意味着函数可以作为另一个函数的返回值
        //声明一个函数，函数作为另一个函数的返回值
        func makeIncrementer() -> ((Int) -> Int) {
            func addOne(number: Int) -> Int{
                return 1 + number
            }
            return addOne
        }
        let increment = makeIncrementer()
        let incNum = increment(7)
        print(incNum)
        
        //函数也可以当做参数传入另一个函数
        //声明一个函数，函数当做参数传入另一个函数
        func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
            for item in list{
                if condition(item) {
                    return true
                }
            }
            return false
        }
        func lessThanTen(number: Int) -> Bool {
            return number < 10
        }
        let matchNumbers = [21, 13, 4, 19]
        let matchBool = hasAnyMatches(list: matchNumbers, condition: lessThanTen)
        print(matchBool)
        
        
        
        //闭包
        //函数实际上是一种特殊的闭包，他是一段能之后被调取的代码。闭包中的代码能访问闭包所建作用域中能得到的变量和函数，即使闭包是在一个不同的作用域被执行的（嵌套函数）。可以使用{}来创建一个匿名闭包。使用 in 将参数和返回值类型声明与闭包函数体进行分离
        
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
