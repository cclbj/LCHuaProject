//
//  TopicAuterView.swift
//  LCHuaProject
//
//  Created by 李臣臣 on 2017/2/22.
//  Copyright © 2017年 early bird international. All rights reserved.
//

import UIKit
import Cartography
import Alamofire

class TopicAuterView: UIView {
    
    var userIcon:UIImageView! = nil;
    var nickName:UILabel! = nil;
    var duty:UILabel! = nil;
    var followBtn:UIButton! = nil;
    var followNum:UILabel! = nil;
    
    required init(){
        super.init(frame: CGRect.init());
        self.creatView();
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //创建界面
    func creatView(){
        
        userIcon = UIImageView.init();
        
        nickName = UILabel.init();
        nickName.font = UIFont.systemFont(ofSize: 11);
        nickName.textColor = RGBA(r: 138, g: 138, b: 138, a: 1);
        
        duty = UILabel.init();
        duty.font = UIFont.systemFont(ofSize: 8);
        duty.textColor = RGBA(r: 138, g: 138, b: 138, a: 1);
        
        followBtn = UIButton.init(type: .custom);
        followBtn.backgroundColor = RGBA(r: 50, g: 50, b: 50, a: 1);
        followBtn.titleLabel?.font = UIFont.systemFont(ofSize: 10);
        followBtn.titleLabel?.textColor = UIColor.white;
        followBtn.layer.cornerRadius = 2;
        followBtn.clipsToBounds = true;


        followNum = UILabel.init();
        followNum.textColor = RGBA(r: 127, g: 127, b: 127, a: 1);
        followNum.font = UIFont.systemFont(ofSize: 8);
        followNum.textAlignment = .right;
        
        self.addSubview(userIcon!);
        self.addSubview(nickName!);
        self.addSubview(duty!);
        self.addSubview(followBtn!);
        self.addSubview(followNum!);
        
        //布局
        constrain(userIcon,nickName,duty,followBtn,followNum) { (userIcon,nickName,duty,followBtn,followNum) in
            
            userIcon.leading == (userIcon.superview?.leading)! + 10;
            userIcon.width == 26;
            userIcon.height == 26;
            userIcon.centerY == (userIcon.superview?.centerY)!;
            
            nickName.leading == userIcon.trailing + 6;
            nickName.top == userIcon.top;
            nickName.trailing == followNum.leading - 8;
            
            
            duty.leading == nickName.leading;
            duty.top == nickName.bottom + 8;
            duty.trailing == followNum.leading - 8;
            
            
            followBtn.trailing == (followBtn.superview?.trailing)! - 10;
            followBtn.centerY == (followBtn.superview?.centerY)!;
            followBtn.width == 60;
            followBtn.height == 25;
            
            followNum.trailing == followBtn.leading - 8;
            followNum.centerY == (followNum.superview?.centerY)!;
            followNum.width >= 78;
            
            
        }
        
        userIcon.layer.cornerRadius = 13;
        userIcon.layer.masksToBounds = true;
        
        
        //调试使用
        userIcon.backgroundColor = UIColor.orange;
        nickName.text = "王二狗";
        duty.text = "店长";
        followBtn.setTitle("已订阅", for: UIControlState.normal);
        followNum.text = "已有177897人订阅";
        
        
    }
    
    

    
}
