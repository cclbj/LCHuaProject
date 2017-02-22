//
//  URLRequest.swift
//  LCHuaProject
//
//  Created by lcc on 2017/2/10.
//  Copyright © 2017年 early bird international. All rights reserved.
//

import Foundation

let CommonURL = "http://app.htxq.net/servlet/";

/** 专题接口Post内容:
 action:mainList_NewVersion
 currentPageIndex: 0
 **/
let TopicHomePage = "SysArticleServlet";


/**
 用户详情
 http://app.htxq.net/servlet/UserCustomerServlet (get)
 Parameter:
 action --> getUserDetail
 userId --> 专题中的id(可选)
 **/
let TopicUserInfo = "UserCustomerServlet";


/**
 文章详情：
 http://app.htxq.net/servlet/SysArticleServlet
 
 Parameters:
 action --> getArticleDetail
 articleid --> 专题中的id
 userid --> 用户的ID （可选）
 
 **/
let TopicArticle = "UserCustomerServlet";
