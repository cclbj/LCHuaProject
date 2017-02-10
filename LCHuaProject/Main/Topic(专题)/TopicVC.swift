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

let topicCellID = "topicCellID";

class TopicVC: RootVC,UITableViewDataSource,UITableViewDelegate {
    
    var tableView:UITableView? = nil;
    
    var page:Int = 0;
    
    

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
    
    //tableView代理方法
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: topicCellID);
        
        if(cell == nil){
        
            cell = LCTopicIndexCell.init(style: UITableViewCellStyle.default, reuseIdentifier: topicCellID);
            
        }
        
        
        return cell!;
    }
    
    //网络请求
    func netRequest() {
        
        
        let parameter:Parameters = ["action":"mainList_NewVersion",
                                    "currentPageIndex":"0"];
        
        print("parameter:\(parameter.description)");
        Alamofire.request(CommonURL + TopicHomePage, method: .post, parameters: parameter, encoding: URLEncoding.httpBody).responseJSON { (response) in
            
            print("Request: \(response.request)")
            print("Response: \(response.response)")
            print("Error: \(response.error)")
            
            if let JSON = response.result.value{
            
                print("JSON:\(JSON)");
                
            }else{
            
                print("error request");
            }
        }
        
        

        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
