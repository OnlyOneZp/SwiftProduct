//
//  SwiftFirstViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/15.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit

class SwiftFirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var _tableView = UITableView()
    
    let _cellId = "SwiftFirst"
    
    var _dataAry = NSArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "swift初见"
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
            pushVC(viewController: MetSimpleValuesViewController())
            break
        case 1:
            pushVC(viewController: MetControlFlowViewController())
            break
        case 2:
            pushVC(viewController: MetFunctionsAndClosuresViewController())
            break
        case 3:
            pushVC(viewController: MetObjectsAndClassesViewController())
            break
        case 4:
            pushVC(viewController: MetEnumAndStructViewController())
            break
        case 5:
            pushVC(viewController: MetProtocolsAndExtensionsViewController())
            break
        case 6:
            pushVC(viewController: MetErrorHandlingViewController())
            break
        case 7:
            pushVC(viewController: MetGenericsViewController())
            break
        default:
            break
        }
    }
    
    func initData() {
        _dataAry = ["简单值","控制流","函数和闭包","对象和类","枚举和结构体","协议和扩展","错误处理","泛型"]
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
