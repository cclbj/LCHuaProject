//
//  HomeTabBarController.swift
//  LCHuaProject
//
//  Created by lcc on 2017/2/6.
//  Copyright © 2017年 early bird international. All rights reserved.
//

import UIKit

class HomeTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let topicVC = TopicVC();
        let picVC = PicVC();
        let cmtVC = CommunityVC();
        let buyVC = BuyVC();
        let mineVC = MineVC();
        
        
        self.addChildViewController(self.addNaviVC(vc: topicVC, title: "专题",picStr: "tb_0_21x21_",selectImg: "tb_0_s_21x21_"));
        self.addChildViewController(self.addNaviVC(vc: picVC, title: "壁纸",picStr: "tb_0-1_21x21_",selectImg: "tb_0-1_s_21x21_"));
        self.addChildViewController(self.addNaviVC(vc: cmtVC, title: "社区",picStr: "tb_1_21x21_",selectImg: "tb_1_s_21x21_"));
        self.addChildViewController(self.addNaviVC(vc: buyVC, title: "商城",picStr: "tb_2_21x21_",selectImg: "tb_2_s_21x21_"));
        self.addChildViewController(self.addNaviVC(vc: mineVC, title: "我的",picStr: "tb_3_21x21_",selectImg: "tb_3_s_21x21_"));
        
        self.tabBar.backgroundImage = UIImage.init(named: "tb_bg_426x53_");
        self.tabBar.shadowImage = UIImage();
        self.tabBar.tintColor = UIColor.black;
        self.tabBar.backgroundColor = UIColor.white;

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addNaviVC(vc:UIViewController,title:String,picStr:String,selectImg:String) -> UINavigationController {
        
        let naviController = UINavigationController();
        naviController.addChildViewController(vc);
        
        //设置导航的标题
        vc.navigationItem.title = title;
        
        //设置底部tabBar的标题
        naviController.tabBarItem.title = title;
        naviController.tabBarItem.image = UIImage.init(named:picStr)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        naviController.tabBarItem.selectedImage = UIImage.init(named:selectImg)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        
        return naviController;
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
