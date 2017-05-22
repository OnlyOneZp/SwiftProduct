//
//  MetProtocolsAndExtensionsViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/15.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

//使用 protocol 来声明一个协议
protocol ExampleProtocol {
    var simpleDescription: String {
        get
    }
    mutating func adjust()
}


//使用 extension 来为现有的类型添加功能，比如新的方法和计算属性。你可以使用拓展在别处修改定义，甚至从外部库或者框架引入的一个类型，使得这个类型遵循某个协议
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "the number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

class MetProtocolsAndExtensionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "协议和扩展"
        self.view.backgroundColor = UIColor.white
        
        //使用 protocol 来声明一个协议(class外)
//        protocol ExampleProtocol {
//            var simpleDescription: String {
//                get
//            }
//            mutating func adjust()
//        }
        
        //类、枚举和结构体都可以实现协议
        class SimpleClass: ExampleProtocol {
            var simpleDescription: String = "A very simple class"
            var anotherProperty: Int = 69105
            func adjust() {
                simpleDescription += "Now 100% adjusted"
            }
        }
        var a = SimpleClass()
        a.adjust()
        let aDescription = a.simpleDescription
        print(aDescription)
        
        struct SimpleStructure: ExampleProtocol {
            var simpleDescription: String = "A simple structure"
            mutating func adjust() {
                simpleDescription += "(adjusted)"
            }
            
        }
        var b = SimpleStructure()
        b.adjust()
        let bDescription = b.simpleDescription
        print(bDescription)
        
        enum SimpleEnum: ExampleProtocol {
            case First(String), Second(String), Third(String)
            
            var simpleDescription: String {
                get {
                    switch self {
                    case let .First(text):
                        return text
                    case let .Second(text):
                        return text
                    case let .Third(text):
                        return text
                    }
                }
                set {
                    switch self {
                    case let .First(text):
                        self = .First(newValue)
                    case let .Second(text):
                        self = .First(newValue)
                    case let .Third(text):
                        self = .First(newValue)
                    }
                }
            }
            mutating func adjust() {
                switch self {
                case let .First(text):
                    self = .First(text + "(first case adjusted)")
                case let .Second(text):
                    self = .Second(text + "(second case adjusted)")
                case let .Third(text):
                    self = .Third(text + "(third case adjusted)")
                }
            }
            
        }
        var c = SimpleEnum.First("one")
        var cDescription = c.simpleDescription
        print(cDescription)
        c.simpleDescription = "adios"
        cDescription = c.simpleDescription
        print(cDescription)
        c.adjust()
        cDescription = c.simpleDescription
        print(cDescription)
        
        //注意声明SimpleStructure时候mutating关键字用来标记一个会修改结构体的方法。SimpleClass 的声明不需要标记任何方法。因为类中的方法通常可以修改类属性（类的性质）
        
        
        //使用 extension 来为现有的类型添加功能，比如新的方法和计算属性。你可以使用拓展在别处修改定义，甚至从外部库或者框架引入的一个类型，使得这个类型遵循某个协议(class外)
//        extension Int: ExampleProtocol {
//            var simpleDescription: String {
//                return "the number \(self)"
//            }
//            mutating func adjust() {
//                self += 42
//            }
//        }
        print(7.simpleDescription)
        
        
        //你可以像使用其他命名类型一样使用协议名---例如，创建一个有不同类型但是都实现一个协议的对象集合。当你处理类型是协议的值时，协议外定义的方法不可用
        let protocolValue: ExampleProtocol = a
        print(protocolValue.simpleDescription)
//        print(protocolValue.anotherProperty)//去掉注释可以看到错误
        
        //即使 protocolValue 变量运行是的类型是simpleClass，编译器会把它的类型当做ExampleProtocol。这表示你不能调用类在它实现的协议之外实现的方法或者属性
        
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("使用 protocol 来声明一个协议\n\n")
        mulStr.append("类、枚举和结构体都可以实现协议\n\n")
        mulStr.append("注意声明结构体和枚举时候mutating关键字用来标记一个会修改结构体的方法。类的声明不需要标记任何方法。因为类中的方法通常可以修改类属性（类的性质）\n\n")
        mulStr.append("使用 extension 来为现有的类型添加功能，比如新的方法和计算属性。你可以使用拓展在别处修改定义，甚至从外部库或者框架引入的一个类型，使得这个类型遵循某个协议\n\n")
        mulStr.append("你可以像使用其他命名类型一样使用协议名---例如，创建一个有不同类型但是都实现一个协议的对象集合。当你处理类型是协议的值时，协议外定义的方法不可用\n\n")

        
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
