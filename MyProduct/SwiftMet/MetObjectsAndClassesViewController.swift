//
//  MetObjectsAndClassesViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/15.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class MetObjectsAndClassesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "对象和类"
        self.view.backgroundColor = UIColor.white
        
        
        //使用 class 和类名来创建一个类。类中属性的声明和常量、变量声明一样，唯一的区别就是他们的上下文是类。同样方法和函数声明一样
        class Shape{
            var numberOfSides = 0
            
            func simpleDescription() -> String {
                return "A shape with \(numberOfSides) sides"
            }
        }
        
        //要创建一个类的实例，在类名后面加上括号。使用点语法来访问实例的属性和方法
        var shape = Shape()
        shape.numberOfSides = 7
        var shapeDescription = shape.simpleDescription()
        print(shapeDescription)
        
        //这个版本的Shape类缺少了一些重要的东西：一个构造函数来初始化类实例。使用init来创建一个构造器
        class NameShape{
            var numberOfSides: Int = 0
            var name: String
            
            init(name: String) {
                self.name = name
            }
            
            func simpleDescription() -> String {
                return "A shape with \(numberOfSides) sides"
            }
            
        }
        //注意self被用来区别实例变量。当你创建实例的时候，像传入函数参数一样给类传入构造器的参数。每个属性都需要复制---无论是通过声明（就像numberOfSides）还是通过构造器（就像name）
        //如果你需要在删除对象之前进行一些清理工作，使用deinit创建一个析构函数
        
        //子类的定义方法是在他们的类名后面加上父类的名字，用冒号分割。创建类的时候并不需要一个标准的根类，所以你可以忽略父类
        //子类如果要重写父类的方法的话，需要用override标记---如果没有添加override就重写父类方法，编译器会报错。编译器同样会检测override标记的方法是否确实在父类中
        class Square: NameShape{
            var sideLength: Double
            
            init(sideLength: Double, name: String) {
                self.sideLength = sideLength
                super.init(name: name)
                numberOfSides = 4
            }
            
            func area() -> Double {
                return sideLength * sideLength
            }
            
            private override func simpleDescription() -> String {
                return "A square with sides of length \(sideLength)."
            }
            
        }
        
        let test = Square(sideLength: 5.2, name: "my test sqrare")
        let testArea = test.area()
        let testSimple = test.simpleDescription()
        print(testArea,testSimple)
        
        //除了储存简单的属性之外，属性还可以有getter和setter
        class EquilateralTriangle: NameShape{
            
            var sideLength:Double = 0.0
            
            init(sideLength: Double, name: String) {
                self.sideLength = sideLength
                super.init(name: name)
                numberOfSides = 3
            }
            
            var perimeter:Double {
                get {
                    return 3.0 * sideLength
                }
                
                set {
                    sideLength = newValue / 3.0
                }
            }
            
            private override func simpleDescription() -> String {
                return "An equilateral triagle with sides of length \(sideLength)"
            }
        }
        var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
        print(triangle.perimeter)
        triangle.perimeter = 9.9
        print(triangle.perimeter)
        //在perimeter的setter中，新值的名字是 newValue 。你可以在set 之后显示的设置一个名字
        
        //注意 EquilateralTriangle 类的构造器执行了三步
        //1、设置子类声明的属性值
        //2、调用父类的构造器
        //3、改变父类定义的属性值。其他的工作比如调用方法、getters和setters也可以在这个阶段完成
        
        //如果你不需要计算属性值，但是仍然需要在设置一个新值之前或者之后运行代码。使用willSet和didSet
        
        //比如，下面的类确保三角形的边长总是和正方形的边长相等
        class TriangleAndSquare {
            
            var square: Square {
                willSet {
                    triangle.sideLength = newValue.sideLength
                }
            }
            
            var triangle:EquilateralTriangle {
                willSet {
                    square.sideLength = newValue.sideLength
                }
            }
            
            init(size: Double, name: String) {
                square = Square(sideLength: size, name: name)
                triangle = EquilateralTriangle(sideLength: size, name: name)
            }
            
        }
        var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
        print(triangleAndSquare.square.sideLength)
        print(triangleAndSquare.triangle.sideLength)
        triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
        print(triangleAndSquare.triangle.sideLength)
        
        
        //处理变量的可选值时，你可以在操作（比如方法、属性和子脚本）之前加 ？ 。如果 ？ 之前的值是 nil，？ 后面的东西都会被忽略，并且整个表达式返回nil。否则， ？ 之后的东西都会被运行。在这两种情况下，整个表达式的值也是一个可选值
        let optionSquare: Square? = Square(sideLength: 2.5, name: "option square")
        let sideLength = optionSquare?.sideLength
        
        print(sideLength)
        
        
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
