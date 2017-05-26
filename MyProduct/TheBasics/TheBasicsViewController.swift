//
//  TheBasicsViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/24.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class TheBasicsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var _tableView = UITableView()
    
    let _cellId = "TheBasicsViewController"
    
    var _dataAry = NSArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "基础部分"
        self.view.backgroundColor = UIColor.white
        
        initData()
        
        _tableView = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height), style: UITableViewStyle.plain)
        
        _tableView.delegate = self
        _tableView.dataSource = self
        
        self.view .addSubview(_tableView)
        
        _tableView.register(UITableViewCell().classForCoder, forCellReuseIdentifier: _cellId)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _dataAry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView .dequeueReusableCell(withIdentifier: _cellId, for: indexPath)
        
        cell.textLabel?.text = _dataAry[indexPath.row] as? String
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            pushVC(viewController: BasicsChangLiangViewController())
        case 1:
            pushVC(viewController: BasicsZhuShiViewController())
        case 2:
            pushVC(viewController: BasicsFengHaoViewController())
        case 3:
            pushVC(viewController: BasicsZhengShuViewController())
        case 4:
            pushVC(viewController: BasicsFuDianShuViewController())
        case 5:
            pushVC(viewController: BasicsLeiXingViewController())
        case 6:
            pushVC(viewController: BasicsShuZhiViewController())
        case 7:
            pushVC(viewController: BasicsZhuanHuanViewController())
        case 8:
            pushVC(viewController: BasicsBieMingViewController())
        case 9:
            pushVC(viewController: BasicsBoolViewController())
        case 10:
            pushVC(viewController: BasicsYuanZuViewController())
        case 11:
            pushVC(viewController: BasicsKeXuanViewController())
        case 12:
            pushVC(viewController: BasicsCuoWuViewController())
        case 13:
            pushVC(viewController: BasicsDuanYanViewController())
        default:
            break
        }
    }
    
    func initData() {
        _dataAry = ["常量和变量","注释","分号","整数","浮点数","类型安全和类型推断","数值型字面量","数值型类型转换","类型别名","布尔值","元组","可选类型","错误处理","断言"]
    }
    
    func pushVC(viewController: UIViewController){
        
        self.navigationController?.pushViewController(viewController, animated: true)
        
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
