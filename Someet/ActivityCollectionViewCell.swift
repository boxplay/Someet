//
//  ActivityCollectionViewCell.swift
//  Someet
//
//  Created by stark on 2018/1/15.
//  Copyright © 2018年 codeboy. All rights reserved.
//

import UIKit

class ActivityCollectionViewCell: UICollectionViewCell {
    
    var title: UILabel?
    var desc:UILabel?
    var poster:UIImageView?
    var width = UIScreen.main.bounds.size.width
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        //吧title 注册到单元格内
        title = UILabel(frame:CGRect(x:20,y:0,width:375,height:20))
        title?.textColor = UIColor.black
        title?.font = UIFont.boldSystemFont(ofSize: 12.0)
        self.addSubview(title!)
        desc = UILabel(frame:CGRect(x:20,y:30,width:375,height:20))
        self.addSubview(desc!)
        poster = UIImageView(frame:CGRect(x:0,y:60,width:(width-10),height:200))
        self.addSubview(poster!)
        
        self.backgroundColor = UIColor.orange //设置整个单元格的颜色
    }
    
    required init(coder aDecoder:NSCoder) {
        fatalError("cell 初始化失败")
    }
}
