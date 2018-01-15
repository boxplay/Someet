//
//  NTViewController.swift
//  Someet
//
//  Created by stark on 2018/1/11.
//  Copyright © 2018年 codeboy. All rights reserved.
//
import UIKit

extension UIViewController {
    

    func createNav(title:String?)
    {
        //隐藏系统导航
        self.navigationController?.isNavigationBarHidden = true
        let navBar = UINavigationBar(frame: CGRect(x:0,y:20,width:self.view.frame.size.width,height:44))
        navBar.backgroundColor = UIColor.black
        
        let titleLabel = UILabel(frame:CGRect(x:0,y:0,width:50,height:44))
        titleLabel.text = title
        titleLabel.textColor = UIColor.white
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(click_event))
        titleLabel.addGestureRecognizer(tap)
        //设置能否与用户进行交互 默认是NO
        titleLabel.isUserInteractionEnabled = true
        let navItem = UINavigationItem()
        navItem.titleView = titleLabel
        
        let left = UIBarButtonItem(title:"goback",style:.plain,target:self,action:nil)
        left.tintColor = UIColor.white
        
        let right = UIBarButtonItem(title:"下一页",style:.plain,target:self,action:nil)
        right.tintColor = UIColor.white
        
        navItem.setLeftBarButton(left, animated: false)
        navItem.setRightBarButton(right, animated: false)
        
        navigationItem.setHidesBackButton(true, animated: false)
        
        navBar.pushItem(navItem, animated: true)
        self.view.addSubview(navBar)
    }
   
    func click_event()
    {
        let Fview = FirstViewController()
//        Fview.viewController = self
        self.present(Fview,animated: true,completion: nil)
        
    }

}
