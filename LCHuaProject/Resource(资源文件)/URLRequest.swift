//
//  URLRequest.swift
//  LCHuaProject
//
//  Created by lcc on 2017/2/10.
//  Copyright © 2017年 early bird international. All rights reserved.
//

import Foundation
import Alamofire
import Kingfisher

let CommonURL = "http://app.htxq.net/servlet/";

/** 专题接口Post内容:
 action:mainList_NewVersion
 currentPageIndex: 0
 **/
let TopicHomePage = "SysArticleServlet";

/**
 用户信息接口：
 
 http://app.htxq.net/servlet/UserCustomerServlet
 
 parameters：
 
 action --> getUserDetail
 userId --> 专题接口中auther的id
 
 **/

let UserDetail = "UserCustomerServlet";


/**
 文章详情接口:
 http://app.htxq.net/servlet/SysArticleServlet
 
 parameters:
 
 action --> getArticleDetail
 articleId --> 专题接口中的id
 userId --> 用户信息中的用户id (可选)
 
 **/

let ArticleDetail = "SysArticleServlet";



