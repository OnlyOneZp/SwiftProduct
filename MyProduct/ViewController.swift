//
//  ViewController.swift
//  MyProduct
//
//  Created by eims on 2017/5/15.
//  Copyright © 2017年 eims. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var _tableView = UITableView()
    
    let _cellId = "cellId"
    
    var _dataAry = NSArray()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Hello,world!"
        self.view.backgroundColor = UIColor.white
        
        self.initData()
        
        _tableView = UITableView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: UIScreen.main.bounds.size.height, height: UIScreen.main.bounds.size.height)), style: UITableViewStyle.plain)
        _tableView.dataSource = self
        _tableView.delegate = self
        
        self.view.addSubview(_tableView)
        
        _tableView.register(UITableViewCell().classForCoder, forCellReuseIdentifier: self._cellId)
        
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _dataAry.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: _cellId, for: indexPath)
        
        cell.textLabel?.text = _dataAry[indexPath.row] as? String
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
            
        case 0:
            pushVC(viewController: SwiftFirstViewController())
        case 1:
            pushVC(viewController: TheBasicsViewController())
        default: break
            
        }
    }
    
    func pushVC(viewController: UIViewController){
        
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }

    func initData(){
        
        _dataAry = ["swift初见", "基础部分"]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

