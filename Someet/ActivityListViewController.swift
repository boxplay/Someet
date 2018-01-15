//
//  ActivityListViewController.swift
//  Someet
//
//  Created by stark on 2018/1/15.
//  Copyright © 2018年 codeboy. All rights reserved.
//

import UIKit

class ActivityListViewController: UIViewController {
    var collectionView:UICollectionView?
    var dataArr = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        var layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: CGRect(0,0,width,height),collectionViewLayout:layout)
        //注册一个cell
        collectionView!.register(Home_Cell.self, forCellWithReuseIdentifier: "cell")
        //注册一个headView
        collectionView!.register(Home_HeadView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "headview")
        collectionView?.delegate = self
        collectionView?.dataSource = self
        
        collectionView?.backgroundColor = UIColor.white
        
        //设置每一个Cell 的宽高
        layout.itemSize = CGSize((width-30),250)
        self.view.addSubview(collectionView!)
        
        self.getData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //返回多少组
    func numberOfSectionsInCollectionView(collectionView:UICollectionView) -> Int {
        return 1
    }
    //返回多少个cell
    func collectionView(collectionView:UICollectionView,numberOfItemsInSection section:Int) -> Int {
        return dataArr.count
    }
    
    //返回自定义的cell
    
    func collectionView(collectionView:UICollectionView,cellForItemAtIndexPath indexPath:NSIndexPath) -> UICollectionView {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCell
        var model = GoodsModel()
        model = dataArr[indexPath.row] as! GoodsModel
        let url : NSURL = NSURL(string:model.image_url as String)!
        cell.imgView!.hnk_setImageFromURL(url)
        cell.layer.borderWidth = 0.3
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.titleLabel!.text = model.short_name
        cell.priceLabel!.text = "$"+model.p_price
        cell.readLabel!.text = "&"+model.like_count
    }
    
    //返回HeadView 的宽高
    func collectionView(collectionView:UICollectionView,layout collectionViewLayout:UICollectionViewLayout,referenceSizeForHeaderInSection section:Int) ->CGSize {
        return CGSize(width:width,height:height/1.6)
    }
    
    //返回自定义HeadView 或者FootViewwo
    func collectionView(collectionView:UICollectionView,viewForSupplementaryElementOfKind kind:String,atIndex indexPath:NSIndexPath) -> UICollectionReusableView {
            var v = Home_HeadView()
        if kind == UICollectionElementKindSectionHeader {
            v = collectionView!.dequeueReusableSupplementaryViewOfKind(kind,withReuseIndentifier:"headView",forIndexPath:indexPath) as! Home_HeadView
        }
        return v
    }
    
    //返回cell 上下左右的间距
    func collectionView(collectionView:UICollectionView,layout collectionViewLayout:UICollectionViewLayout,insetForSectionAtIndex section:Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(5, 10, 5, 10)
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
