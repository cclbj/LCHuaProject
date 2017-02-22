//
//  DefineFile.swift
//  LCHuaProject
//
//  Created by 李臣臣 on 2017/2/22.
//  Copyright © 2017年 early bird international. All rights reserved.
//

import Foundation
import UIKit

func RGBA (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat)->(UIColor){ return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a) }

func SCREEN_WIDTH()->(CGFloat){

    return UIScreen.main.bounds.size.width;
}

func SCREEN_HEIGHT()->(CGFloat){
    
    return UIScreen.main.bounds.size.height;
}
