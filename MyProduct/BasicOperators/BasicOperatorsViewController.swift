//
//  BasicOperatorsViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/26.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class BasicOperatorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var _tableView = UITableView()
    
    let _cellId = "BasicOperatorsViewController"
    
    var _dataAry = NSArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.title = "基本运算符"
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
            pushVC(viewController: OperatorSuYuViewController())
        case 1:
            pushVC(viewController: OperatorFuZhiViewController())
        case 2:
            pushVC(viewController: OperatorSuanShuViewController())
        case 3:
            pushVC(viewController: OperatorZuheViewController())
        case 4:
            pushVC(viewController: OperatorBiJiaoViewController())
        case 5:
            pushVC(viewController: OperatorSanMuViewController())
        case 6:
            pushVC(viewController: OperatorKongHeViewController())
        case 7:
            pushVC(viewController: OperatorQuJianViewController())
        case 8:
            pushVC(viewController: OperatorLuoJiViewController())
        default:
            break
        }
    }
    
    func initData() {
        _dataAry = ["术语","赋值运算符","算数运算符","组合赋值运算符","比较运算符","三目运算符","空合运算符","区间运算符","逻辑运算符"]
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
