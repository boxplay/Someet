//
//  ActivityItemController.swift
//  Someet
//
//  Created by stark on 2018/1/15.
//  Copyright © 2018年 codeboy. All rights reserved.
//

import UIKit

class ActivityItemController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {

    var colview:UICollectionView?
    var width = UIScreen.main.bounds.size.width
    var height = UIScreen.main.bounds.size.height
    var dataArr = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.title = "活动列表"
        
        
        let layout = UICollectionViewFlowLayout()
        
        colview = UICollectionView(frame:CGRect.init(x:0,y:0,width:width,height:height),collectionViewLayout:layout)
        
        colview?.register(ActivityCollectionViewCell.self, forCellWithReuseIdentifier: "colcell")
        colview?.delegate = self
        colview?.dataSource = self
        colview?.backgroundColor = UIColor.black
        layout.itemSize = CGSize(width:(width-10),height:260)
        self.view.addSubview(colview!)
//        self.view.backgroundColor = UIColor.black
        self.createNav(title:"活动列表")
        getData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //返回cell 数量
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArr.count
    }
    // 设置 cell 上下左右的距离
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        return UIEdgeInsetsMake(70, 5, 30, 5) //top left bottom right
    }
    
    //cell 内容
    
    func collectionView(_ collectionView:UICollectionView,cellForItemAt indexPath:IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colcell", for: indexPath) as! ActivityCollectionViewCell
        var model = ActivityModel()
        model = dataArr[indexPath.row] as! ActivityModel
        cell.title!.text = "这里是标题\(model.title)"
        cell.poster!.image = UIImage(named:"2.jpg")
        cell.desc!.text = "这里是简单介绍\(model.desc)"
        return cell
    }

    //获取瀑布流内容
    func getData()
    {
        for i in 0...5 {
            let model = ActivityModel()
            model.title = "title\(i)"
            model.desc = "desc\(i)"
            model.poster = "2.jpg"
            self.dataArr.add(model)
        }
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
