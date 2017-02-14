//
//  TopicVC.swift
//  LCHuaProject
//
//  Created by lcc on 2017/2/6.
//  Copyright © 2017年 early bird international. All rights reserved.
//

import UIKit
import Cartography
import Alamofire
import SwiftyJSON
import MJRefresh


let topicCellID = "topicCellID";

class TopicVC: RootVC,UITableViewDataSource,UITableViewDelegate {
    
    var tableView:UITableView? = nil;
    var page:Int = 0;
    
    var topicRootModel:TopicIndexModel? = nil;
    
    //数据源
    var dataSource:[Any]!;
    
    //导航视图
    var titleView:UIView? = nil;
    var arrowImg:UIImageView? = nil;
    var isSelected:Bool = false;
    var menuView:UIView? = nil;
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated);
        
        self.configNavi();
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        //创建页面
        self.creatView();
        
        // 网络请求
        self.netRequest();
   
    }
    
    //创建UI
    func creatView() {
        
        
        tableView = UITableView();
        tableView?.separatorStyle = .none;
        
        tableView?.mj_header = MJRefreshNormalHeader.init(refreshingBlock: { 
           
            
            self.page = 0;
            self.netRequest();
        });
        
        tableView?.mj_footer = MJRefreshAutoNormalFooter.init(refreshingBlock: {
            
            self.netRequest();
        });
        
        //注册cell
        tableView?.register(LCTopicIndexCell.classForCoder(), forCellReuseIdentifier: topicCellID);
        tableView?.backgroundColor = UIColor.green;
        tableView?.rowHeight = 160;
        self.tableView?.dataSource = self;
        self.tableView?.delegate = self;
        
        self.view.addSubview(tableView!);
        
        constrain(tableView!) { (tableView) in
            tableView.edges == (tableView.superview?.edges)!;
        }
        
        
    }
    
    //tableView代理方法
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(self.topicRootModel == nil){
            
            return 0;
        }
        
        return (self.topicRootModel?.result.count)!;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:LCTopicIndexCell = tableView.dequeueReusableCell(withIdentifier: topicCellID) as! LCTopicIndexCell;
        
        cell.topicModel = self.topicRootModel?.result[indexPath.row];
        
        return cell;
    }
    
    //网络请求
    func netRequest() {
        
        
        let parameter:Parameters = ["action":"mainList_NewVersion",
                                    "currentPageIndex":"\(page)"];
        
        print("parameter:\(parameter.description)");
        Alamofire.request(CommonURL + TopicHomePage, method: .post, parameters: parameter, encoding: URLEncoding.httpBody).responseJSON { (response) in
            
            print("Request: \(response.request)")
            print("Response: \(response.response)")
            print("Error: \(response.error)")
            
            
            if let value = response.result.value {
                
                let tempModel = TopicIndexModel.init(fromJson: JSON(value));
                
                //将数据模型放入对应的model中
                if(self.page == 0){
                
                    self.topicRootModel = tempModel;
                    
                }else{
                
                
                    self.topicRootModel?.result.append(contentsOf: tempModel.result);
                    
                }
                
                self.tableView?.reloadData();
                
                self.tableView?.mj_footer.endRefreshing();
                self.tableView?.mj_header.endRefreshing();
                
                self.page += 1;
                
            }
            

            
            
        }
        
        
    }
    
    //配置导航栏的内容
    
    func configNavi() {
        
        //配置标题栏
        self.naviTitleView();
        
    }
    
    func naviTitleView(){
        
        titleView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 50, height: 14));
        titleView?.backgroundColor = UIColor.yellow;
        
        let titleLabel:UILabel = UILabel();
        arrowImg = UIImageView();
        arrowImg?.image = UIImage.init(named: "hp_arrow_11x6_");
        
        titleLabel.text = "专题";
        titleLabel.font = UIFont.systemFont(ofSize: 14);
        
        titleView?.addSubview(titleLabel);
        titleView?.addSubview(arrowImg!);
        
        constrain(titleLabel,arrowImg!) { (titleLabel,arrowImg) in
            
            titleLabel.leading == (titleLabel.superview?.leading)!;
            titleLabel.centerY == (titleLabel.superview?.centerY)!;
            
            arrowImg.leading == titleLabel.trailing + 5;
            arrowImg.centerY == (titleLabel.superview?.centerY)!;
            arrowImg.width == 12;
            arrowImg.height == 6;
            
            
        }
        
        
        //添加点击事件
        titleView?.isUserInteractionEnabled = true;
        titleView?.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(titleViewClick)));
        
        self.navigationItem.titleView = titleView;
        
        
        
        
        
    }
    
    //点击事件处理
    func titleViewClick(){
        
        self.isSelected = !self.isSelected;
        
        if self.isSelected {
            
            self.arrowImg?.image = #imageLiteral(resourceName: "navigationbar_arrow_up_11x6_");
            //添加浮层菜单
            self.creatMenuView();
            menuView?.isHidden = false;
            
        }else{
        
            self.arrowImg?.image = #imageLiteral(resourceName: "navigationbar_arrow_down_11x6_");
            menuView?.isHidden = true;
        }
        
        
        
    
    }
    
    //显示复层窗口
    func creatMenuView(){
        
        menuView = UIView.init();
        menuView?.backgroundColor = UIColor.green;
        UIApplication.shared.keyWindow?.addSubview(menuView!);
       
        constrain(menuView!) { (menuView) in
            menuView.centerX == (menuView.superview?.centerX)!;
            menuView.top == (menuView.superview?.top)! + 58;
            menuView.width == 90;
            menuView.height == 83;
        }
        
        self.setMenuTitle();
        
        
    }
    
    //创建菜单内容
    func setMenuTitle() {
        
        let arrowImg:UIImageView = UIImageView();
        arrowImg.backgroundColor = UIColor.yellow;
        
        let firstItem:UILabel = UILabel.init();
        firstItem.font = UIFont.systemFont(ofSize: 13);
        
        let secondItem:UILabel = UILabel.init();
        secondItem.font = UIFont.systemFont(ofSize: 13);
        
        
        menuView?.addSubview(arrowImg);
        menuView?.addSubview(firstItem);
        menuView?.addSubview(secondItem);
        
        
        constrain(arrowImg,firstItem,secondItem) { (arrowImg,firstItem,secondItem) in
            
            arrowImg.centerX == (arrowImg.superview?.centerX)!;
            arrowImg.top == (arrowImg.superview?.top)!;
            arrowImg.width == 15;
            arrowImg.height == 8;
            
            firstItem.top == arrowImg.bottom + 10;
            firstItem.centerX == (firstItem.superview?.centerX)!;
            
            secondItem.top == firstItem.bottom + 21;
            secondItem.centerX == (secondItem.superview?.centerX)!;
            
            
        }
        
        firstItem.text = "文章";
        secondItem.text = "视频";
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
