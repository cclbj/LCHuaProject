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


let topicCellID = "topicCellID";

class TopicVC: RootVC,UITableViewDataSource,UITableViewDelegate {
    
    var tableView:UITableView? = nil;
    var page:Int = 0;
    
    var topicRootModel:TopicIndexModel? = nil;
    
    //数据源
    var dataSource:[Any]!;
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        self.creatView();
        
        // 网络请求
        self.netRequest();
   
    }
    
    //创建UI
    func creatView() {
        
        
        tableView = UITableView();
        tableView?.dataSource = self;
        tableView?.delegate = self;
        
        //注册cell
        tableView?.register(LCTopicIndexCell.classForCoder(), forCellReuseIdentifier: topicCellID);
        tableView?.backgroundColor = UIColor.green;
        tableView?.rowHeight = 160;
        
        self.view.addSubview(tableView!);
        
        constrain(tableView!) { (tableView) in
            tableView.edges == (tableView.superview?.edges)!;
        }
        
        
    }
    
    //MARK:tableView代理方法
    //tableView代理方法
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (self.topicRootModel != nil){
        
            return (self.topicRootModel?.result.count)!;
        }else{
        
            return 0;
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:LCTopicIndexCell = tableView.dequeueReusableCell(withIdentifier: topicCellID) as! LCTopicIndexCell;
        
        
        cell.topicModel = self.topicRootModel?.result[indexPath.row];
        
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let topicArticleVc:TopicArticleVC = TopicArticleVC();
        
        self.navigationController?.pushViewController(topicArticleVc, animated: true);
        
    }
    
    //MARK:网络相关
    //网络请求
    func netRequest() {
        
        
        let parameter:Parameters = ["action":"mainList_NewVersion",
                                    "currentPageIndex":"0"];
        
        print("parameter:\(parameter.description)");
        Alamofire.request(CommonURL + TopicHomePage, method: .post, parameters: parameter, encoding: URLEncoding.httpBody).responseJSON { (response) in
            
            print("Request: \(response.request)")
            print("Response: \(response.response)")
            print("Error: \(response.error)")
            
            
            if let value = response.result.value {
                
                //将数据模型放入对应的model中
                self.topicRootModel = TopicIndexModel.init(fromJson: JSON(value));
                
                self.tableView?.reloadData();
                
            }
            

            
            
        }
        
        
        
        

        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
