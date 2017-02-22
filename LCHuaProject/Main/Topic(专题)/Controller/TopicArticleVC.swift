//
//  TopicArticleVC.swift
//  LCHuaProject
//
//  Created by 李臣臣 on 2017/2/22.
//  Copyright © 2017年 early bird international. All rights reserved.
//

import UIKit
import Cartography

class TopicArticleVC: RootVC {
    
    var autherInfoView:TopicAuterView! = nil;
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.creatView();
    }
    
    func creatView(){
        
        autherInfoView = TopicAuterView.init();
//        autherInfoView.backgroundColor = UIColor.red;
        
        self.view.addSubview(autherInfoView);
        

        constrain(autherInfoView!) { (autherInfoView) in
            
            autherInfoView.top == (autherInfoView.superview?.top)!;
            autherInfoView.leading == (autherInfoView.superview?.leading)!;
            autherInfoView.trailing == (autherInfoView.superview?.trailing)!;
            
            autherInfoView.height == 48;
            
        }
        
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
