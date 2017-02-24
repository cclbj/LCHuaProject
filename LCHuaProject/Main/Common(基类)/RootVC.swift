//
//  RootVC.swift
//  LCHuaProject
//
//  Created by lcc on 2017/2/6.
//  Copyright © 2017年 early bird international. All rights reserved.
//

import UIKit

class RootVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //设置通用属性
        self.configOption();
        
    }
    
    func configOption(){
        self.edgesForExtendedLayout = .init(rawValue: 0);
        self.view.backgroundColor = UIColor.white;
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
