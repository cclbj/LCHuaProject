//
//  LCTopicIndexCell.swift
//  LCHuaProject
//
//  Created by lcc on 2017/2/13.
//  Copyright © 2017年 early bird international. All rights reserved.
//

import UIKit
import Cartography

class LCTopicIndexCell: UITableViewCell {
    
    var bgImg:UIImageView! = nil;
    var titleLabel:UILabel! = nil;
    var tagLabel:UILabel! = nil;
    
    //数据传递
public var topicModel:Result!{
    
        set{
        
            topicModel = newValue;
            self.showData();
            
        }
        
        get{
        
            return topicModel;
        }
        
    }
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }
    
    required override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier);
        self.creatUI();
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //创建界面
    func creatUI() {
        
        bgImg = UIImageView();
        titleLabel = UILabel();
        tagLabel = UILabel();
        
        titleLabel.font = UIFont.systemFont(ofSize: 14);
        tagLabel.font = UIFont.systemFont(ofSize: 12);
        
        
        self.addSubview(bgImg);
        self.addSubview(titleLabel);
        self.addSubview(tagLabel);
        
        constrain(bgImg) { (bgImg) in
            bgImg.edges == (bgImg.superview?.edges)!;
        }
        
        constrain(titleLabel) { (titleLabel) in
            titleLabel.centerX == (titleLabel.superview?.centerX)!;
            titleLabel.centerY == (titleLabel.superview?.centerY)!;
        }
        
        constrain(tagLabel,titleLabel) { (tagLabel,titleLabel) in
            
            tagLabel.top == titleLabel.bottom + 10;
            tagLabel.centerX == (tagLabel.superview?.centerX)!;
        }
        
        
        //测试数据
        titleLabel.text = "#测试标题#";
        tagLabel.text = "#测试标签#";
        bgImg.backgroundColor = UIColor.orange;

    }
    
    //显示数据
    func showData(){
        self.titleLabel.text = topicModel.title;
        self.tagLabel.text = "#\(topicModel.category.name)#";
    }
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
