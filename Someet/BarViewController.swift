//
//  BarViewController.swift
//  Someet
//
//  Created by stark on 2018/1/12.
//  Copyright © 2018年 codeboy. All rights reserved.
//

import UIKit

class BarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //创建首页的导航控制器
        let index = ActivityItemController()
        //let indexNav = UINavigationController(rootViewController:index)
        index.tabBarItem.title = "活动"
        let map = MapViewController()
        map.tabBarItem.title = "地图"
        let items = [index,map]
        self.viewControllers = items
//        self.tabBar.backgroundColor = UIColor.clear
        
        // Do any additional setup after loading the view.
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
