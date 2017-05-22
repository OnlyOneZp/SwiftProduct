//
//  MetEnumAndStructViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/15.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class MetEnumAndStructViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "枚举和结构体"
        self.view.backgroundColor = UIColor.white
        
        
        //使用 enum 来创建一个枚举，就像类和其他所有命名类型一样，枚举可以包含方法
        enum Rank: Int{
            case Ace = 1
            case Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten
            case Jack, Queen, King
            func simpleDescription() -> String {
                switch self {
                case .Ace:
                    return "ace"
                case .Jack:
                    return "jack"
                case .Queen:
                    return "queen"
                case .King:
                    return "king"
                default:
                    return String(self.rawValue)
                }
            }
        }
        let ace = Rank.Ace
        let aceRewValue = ace.rawValue
        print(ace,aceRewValue)
        //默认情况下，Swift 按照从 0 开始每次加 1 的方式为原始值进行赋值，不过你可以显示赋值进行改变。在上面的例子中，Ace被显示赋值为1，并且剩下的原始值会按照顺序赋值。你也可以使用字符串或者浮点数作为枚举的原始值。使用rawValue属性来访问一个枚举成员的原始值
        
        //使用 init?(rawValue:)初始化构造器在原始值和枚举值之间进行转换
        if let convertedRank = Rank(rawValue: 3) {
            let threeDescription = convertedRank.simpleDescription()
            print(threeDescription)
        }
        
        //枚举的成员值是实际值，并不是原始值的另一种表达方法。实际上，如果没有比较有意义的原始值，你就不提供原始值
        enum Suit {
            case Sqpades, Headarts, Diamonds, Clubs
            func simpleDescription() -> String {
                switch self {
                case .Sqpades:
                    return "sqpades"
                case .Headarts:
                    return "headarts"
                case .Diamonds:
                    return "diamonds"
                case .Clubs:
                    return "clubs"
                }
            }
        }
        let hearts = Suit.Headarts
        let heartsDescription = hearts.simpleDescription()
        print(hearts,heartsDescription)
        
        //注意，有两种方式可以引用 Hearts 成员：给 Hearts 常量赋值时，枚举成员 Suit. Hearts需要用到全名来引用，因为常量没有显示指定类型。在 switch 里，枚举成员使用缩写 .hearts 来引用，以为self的值已经知道是一个suit。已知变量类型的情况下你可以使用缩写
        
        //一个枚举成员的实例可以有实例值。相同枚举成员的实例可以有不同的值。创建实例的时候传入值即可。实例值和原始值是不同的：枚举成员的原始值对于所有实例都是相同的，而且你是在定义枚举的时候设置原始值
        
        //例如。考虑从服务器获取日出和日落的时间。服务器会返回正常结果或者错误信息
        enum ServerResponse {
            case Result(String, String)
            case Failure(String)
        }
        
        let success = ServerResponse.Result("6:00 am", "8:09 pm")
        let failure = ServerResponse.Failure("out of cheese.")
        
        switch success {
        case let .Result(sunrise, sunset):
            let serverResponse = "Sunrise is at \(sunrise) and subset is at \(sunset)"
            print(serverResponse)
        case let .Failure(message):
            print("Failure -> \(message)")
        }
        //注意日升和日落时间是如何从 ServerResponse 中提取到并与 switch 的 case 相匹配的
        
        
        //使用 struct 来创建一个结构体。结构体和类有很多相同的地方，比如方法和构造器。它们之间最大的一个区别就是结构体是传值，类是引用
        struct Card {
            var rank: Rank
            var suit: Suit
            func simpleDescription() -> String {
                return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
            }
        }
        let threeOfSpades = Card(rank: .Three, suit: .Sqpades)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
        print(threeOfSpades,threeOfSpadesDescription)
        
        
        
        
        let mulStr = NSMutableString()
        
        mulStr.append("使用 enum 来创建一个枚举，就像类和其他所有命名类型一样，枚举可以包含方法\n\n")
        mulStr.append("默认情况下，Swift 按照从 0 开始每次加 1 的方式为原始值进行赋值，不过你可以显示赋值进行改变。在上面的例子中，Ace被显示赋值为1，并且剩下的原始值会按照顺序赋值。你也可以使用字符串或者浮点数作为枚举的原始值。使用rawValue属性来访问一个枚举成员的原始值\n\n")
        mulStr.append("使用 init?(rawValue:)初始化构造器在原始值和枚举值之间进行转换\n\n")
        mulStr.append("枚举的成员值是实际值，并不是原始值的另一种表达方法。实际上，如果没有比较有意义的原始值，你就不提供原始值\n\n")
        mulStr.append("一个枚举成员的实例可以有实例值。相同枚举成员的实例可以有不同的值。创建实例的时候传入值即可。实例值和原始值是不同的：枚举成员的原始值对于所有实例都是相同的，而且你是在定义枚举的时候设置原始值\n\n")
        mulStr.append("使用 struct 来创建一个结构体。结构体和类有很多相同的地方，比如方法和构造器。它们之间最大的一个区别就是结构体是传值，类是引用\n\n")

        
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
