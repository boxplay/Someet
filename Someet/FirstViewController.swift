//
//  FirstViewController.swift
//  Someet
//
//  Created by stark on 2018/1/11.
//  Copyright © 2018年 codeboy. All rights reserved.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController {
    var box = UIView()
    var div = UIView()
    var r = UIView()
    let screenh = UIScreen.main.bounds.size.height
    let screenw = UIScreen.main.bounds.size.width
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.brown
        box.backgroundColor = UIColor.orange
        self.view.addSubview(box)
        box.snp.makeConstraints { (make) in
            make.width.equalTo(screenw-40)
            make.height.equalTo(300)
            make.center.equalTo(self.view)
//            make.top.equalTo(64)
//            make.bottom.equalTo(-44)
            make.left.equalTo(20)
            make.right.equalTo(-20)
        }
        div.backgroundColor = UIColor.green
        box.addSubview(div)
        div.snp.makeConstraints {
            (make) in
            make.width.height.equalTo(100)
//            make.center.equalTo(box)
            make.top.equalTo(10)
            make.left.equalTo(20)
        }
        //创建有图标
        r.backgroundColor = UIColor.red
        box.addSubview(r)
        r.snp.makeConstraints {
            (make) in
            make.width.height.equalTo(50)
            make.right.equalTo(-10)
            make.top.equalTo(10)
        }
//        self.tabBarItem.title = "首页"
        self.createNav(title:"这是首页")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getWH()
    {
    
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
