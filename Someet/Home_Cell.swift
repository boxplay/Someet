//
//  Home_Cell.swift
//  Someet
//
//  Created by stark on 2018/1/15.
//  Copyright © 2018年 codeboy. All rights reserved.
//

import UIKit

class Home_Cell: UICollectionViewCell {
    let width = UIScreen.main.bounds.size.width
    var imgView:UIImageView? //cell 上的图片
    var titleLabel:UILabel?
    var priceLabel:UILabel?
    var readLabel:UILabel?
    
    override init(frame:CGRect)
    {
        super.init(frame:frame)
        
        //初始化空间
        imgView = UIImageView(frame:CGRect(x:0,y:-10,width:(width-30),height:200))
        self.addSubview(imgView!)
        titleLabel = UILabel(frame:CGRect(x:(width-30)/2,y:imgView!.frame.maxY,width:(width-40)/2,height:20))
        titleLabel?.numberOfLines = 0
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        titleLabel?.textColor = UIColor.lightGray
        self.addSubview(titleLabel!)
        
        priceLabel = UILabel(frame:CGRect(x:(width-30)/2,y:titleLabel!.frame.maxY-12,width:(width-40)/2,height:20))
        priceLabel?.numberOfLines = 0
        priceLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        priceLabel?.textColor = UIColor.lightGray
        self.addSubview(priceLabel!)
        
        readLabel = UILabel(frame:CGRect(x:(width-30)/2,y:priceLabel!.frame.maxY-22,width:(width-40)/2,height:20))
        readLabel?.numberOfLines = 0
        readLabel?.textAlignment = NSTextAlignment.right
        readLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        readLabel?.textColor = UIColor.lightGray
        self.addSubview(readLabel!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
