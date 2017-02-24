//
//	Result.swift
//
//	Create by 臣臣 李 on 13/2/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class Result : NSObject, NSCoding{

	var appoint : Int!
	var author : AutherModel!
	var category : Category!
	var check : Bool!
	var content : String!
	var content2 : String!
	var content3 : String!
	var contentTitle1 : String!
	var contentTitle2 : String!
	var contentTitle3 : String!
	var createDate : String!
	var desc : String!
	var descIcon : String!
	var descTitle : String!
	var favo : Int!
	var fnCommentNum : Int!
	var fnCuringNum : Int!
	var fnDifficultyNum : Int!
	var fnGoodsIds : String!
	var fnHumidityNum : Int!
	var fnIsVph : Int!
	var fnVphReadNum : Int!
	var goodsList : [AnyObject]!
	var hasAddFavo : Bool!
	var hasAppoint : Bool!
	var id : String!
	var keywords : String!
	var newAppoint : Int!
	var newFavo : Int!
	var newRead : Int!
	var order : Int!
	var pageUrl : String!
	var pass : Int!
	var pushTime : String!
	var read : Int!
	var share : Int!
	var sharePageUrl : String!
	var smallIcon : String!
	var title : String!
	var top : Bool!
	var video : Bool!
	var videoUrl : String!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		appoint = json["appoint"].intValue
		let authorJson = json["author"]
		if !authorJson.isEmpty{
			author = AutherModel(fromJson: authorJson)
		}
		let categoryJson = json["category"]
		if !categoryJson.isEmpty{
			category = Category(fromJson: categoryJson)
		}
		check = json["check"].boolValue
		content = json["content"].stringValue
		content2 = json["content2"].stringValue
		content3 = json["content3"].stringValue
		contentTitle1 = json["contentTitle1"].stringValue
		contentTitle2 = json["contentTitle2"].stringValue
		contentTitle3 = json["contentTitle3"].stringValue
		createDate = json["createDate"].stringValue
		desc = json["desc"].stringValue
		descIcon = json["descIcon"].stringValue
		descTitle = json["descTitle"].stringValue
		favo = json["favo"].intValue
		fnCommentNum = json["fnCommentNum"].intValue
		fnCuringNum = json["fnCuringNum"].intValue
		fnDifficultyNum = json["fnDifficultyNum"].intValue
		fnGoodsIds = json["fnGoodsIds"].stringValue
		fnHumidityNum = json["fnHumidityNum"].intValue
		fnIsVph = json["fnIsVph"].intValue
		fnVphReadNum = json["fnVphReadNum"].intValue
		goodsList = [AnyObject]()
		let goodsListArray = json["goodsList"].arrayValue
		for goodsListJson in goodsListArray{
			goodsList.append(goodsListJson.stringValue as AnyObject)
		}
		hasAddFavo = json["hasAddFavo"].boolValue
		hasAppoint = json["hasAppoint"].boolValue
		id = json["id"].stringValue
		keywords = json["keywords"].stringValue
		newAppoint = json["newAppoint"].intValue
		newFavo = json["newFavo"].intValue
		newRead = json["newRead"].intValue
		order = json["order"].intValue
		pageUrl = json["pageUrl"].stringValue
		pass = json["pass"].intValue
		pushTime = json["pushTime"].stringValue
		read = json["read"].intValue
		share = json["share"].intValue
		sharePageUrl = json["sharePageUrl"].stringValue
		smallIcon = json["smallIcon"].stringValue
		title = json["title"].stringValue
		top = json["top"].boolValue
		video = json["video"].boolValue
		videoUrl = json["videoUrl"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if appoint != nil{
			dictionary["appoint"] = appoint
		}
		if author != nil{
			dictionary["author"] = author.toDictionary()
		}
		if category != nil{
			dictionary["category"] = category.toDictionary()
		}
		if check != nil{
			dictionary["check"] = check
		}
		if content != nil{
			dictionary["content"] = content
		}
		if content2 != nil{
			dictionary["content2"] = content2
		}
		if content3 != nil{
			dictionary["content3"] = content3
		}
		if contentTitle1 != nil{
			dictionary["contentTitle1"] = contentTitle1
		}
		if contentTitle2 != nil{
			dictionary["contentTitle2"] = contentTitle2
		}
		if contentTitle3 != nil{
			dictionary["contentTitle3"] = contentTitle3
		}
		if createDate != nil{
			dictionary["createDate"] = createDate
		}
		if desc != nil{
			dictionary["desc"] = desc
		}
		if descIcon != nil{
			dictionary["descIcon"] = descIcon
		}
		if descTitle != nil{
			dictionary["descTitle"] = descTitle
		}
		if favo != nil{
			dictionary["favo"] = favo
		}
		if fnCommentNum != nil{
			dictionary["fnCommentNum"] = fnCommentNum
		}
		if fnCuringNum != nil{
			dictionary["fnCuringNum"] = fnCuringNum
		}
		if fnDifficultyNum != nil{
			dictionary["fnDifficultyNum"] = fnDifficultyNum
		}
		if fnGoodsIds != nil{
			dictionary["fnGoodsIds"] = fnGoodsIds
		}
		if fnHumidityNum != nil{
			dictionary["fnHumidityNum"] = fnHumidityNum
		}
		if fnIsVph != nil{
			dictionary["fnIsVph"] = fnIsVph
		}
		if fnVphReadNum != nil{
			dictionary["fnVphReadNum"] = fnVphReadNum
		}
		if goodsList != nil{
			dictionary["goodsList"] = goodsList
		}
		if hasAddFavo != nil{
			dictionary["hasAddFavo"] = hasAddFavo
		}
		if hasAppoint != nil{
			dictionary["hasAppoint"] = hasAppoint
		}
		if id != nil{
			dictionary["id"] = id
		}
		if keywords != nil{
			dictionary["keywords"] = keywords
		}
		if newAppoint != nil{
			dictionary["newAppoint"] = newAppoint
		}
		if newFavo != nil{
			dictionary["newFavo"] = newFavo
		}
		if newRead != nil{
			dictionary["newRead"] = newRead
		}
		if order != nil{
			dictionary["order"] = order
		}
		if pageUrl != nil{
			dictionary["pageUrl"] = pageUrl
		}
		if pass != nil{
			dictionary["pass"] = pass
		}
		if pushTime != nil{
			dictionary["pushTime"] = pushTime
		}
		if read != nil{
			dictionary["read"] = read
		}
		if share != nil{
			dictionary["share"] = share
		}
		if sharePageUrl != nil{
			dictionary["sharePageUrl"] = sharePageUrl
		}
		if smallIcon != nil{
			dictionary["smallIcon"] = smallIcon
		}
		if title != nil{
			dictionary["title"] = title
		}
		if top != nil{
			dictionary["top"] = top
		}
		if video != nil{
			dictionary["video"] = video
		}
		if videoUrl != nil{
			dictionary["videoUrl"] = videoUrl
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         appoint = aDecoder.decodeObject(forKey: "appoint") as? Int
         author = aDecoder.decodeObject(forKey: "author") as? AutherModel
         category = aDecoder.decodeObject(forKey: "category") as? Category
         check = aDecoder.decodeObject(forKey: "check") as? Bool
         content = aDecoder.decodeObject(forKey: "content") as? String
         content2 = aDecoder.decodeObject(forKey: "content2") as? String
         content3 = aDecoder.decodeObject(forKey: "content3") as? String
         contentTitle1 = aDecoder.decodeObject(forKey: "contentTitle1") as? String
         contentTitle2 = aDecoder.decodeObject(forKey: "contentTitle2") as? String
         contentTitle3 = aDecoder.decodeObject(forKey: "contentTitle3") as? String
         createDate = aDecoder.decodeObject(forKey: "createDate") as? String
         desc = aDecoder.decodeObject(forKey: "desc") as? String
         descIcon = aDecoder.decodeObject(forKey: "descIcon") as? String
         descTitle = aDecoder.decodeObject(forKey: "descTitle") as? String
         favo = aDecoder.decodeObject(forKey: "favo") as? Int
         fnCommentNum = aDecoder.decodeObject(forKey: "fnCommentNum") as? Int
         fnCuringNum = aDecoder.decodeObject(forKey: "fnCuringNum") as? Int
         fnDifficultyNum = aDecoder.decodeObject(forKey: "fnDifficultyNum") as? Int
         fnGoodsIds = aDecoder.decodeObject(forKey: "fnGoodsIds") as? String
         fnHumidityNum = aDecoder.decodeObject(forKey: "fnHumidityNum") as? Int
         fnIsVph = aDecoder.decodeObject(forKey: "fnIsVph") as? Int
         fnVphReadNum = aDecoder.decodeObject(forKey: "fnVphReadNum") as? Int
         goodsList = aDecoder.decodeObject(forKey: "goodsList") as? [AnyObject]
         hasAddFavo = aDecoder.decodeObject(forKey: "hasAddFavo") as? Bool
         hasAppoint = aDecoder.decodeObject(forKey: "hasAppoint") as? Bool
         id = aDecoder.decodeObject(forKey: "id") as? String
         keywords = aDecoder.decodeObject(forKey: "keywords") as? String
         newAppoint = aDecoder.decodeObject(forKey: "newAppoint") as? Int
         newFavo = aDecoder.decodeObject(forKey: "newFavo") as? Int
         newRead = aDecoder.decodeObject(forKey: "newRead") as? Int
         order = aDecoder.decodeObject(forKey: "order") as? Int
         pageUrl = aDecoder.decodeObject(forKey: "pageUrl") as? String
         pass = aDecoder.decodeObject(forKey: "pass") as? Int
         pushTime = aDecoder.decodeObject(forKey: "pushTime") as? String
         read = aDecoder.decodeObject(forKey: "read") as? Int
         share = aDecoder.decodeObject(forKey: "share") as? Int
         sharePageUrl = aDecoder.decodeObject(forKey: "sharePageUrl") as? String
         smallIcon = aDecoder.decodeObject(forKey: "smallIcon") as? String
         title = aDecoder.decodeObject(forKey: "title") as? String
         top = aDecoder.decodeObject(forKey: "top") as? Bool
         video = aDecoder.decodeObject(forKey: "video") as? Bool
         videoUrl = aDecoder.decodeObject(forKey: "videoUrl") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if appoint != nil{
			aCoder.encode(appoint, forKey: "appoint")
		}
		if author != nil{
			aCoder.encode(author, forKey: "author")
		}
		if category != nil{
			aCoder.encode(category, forKey: "category")
		}
		if check != nil{
			aCoder.encode(check, forKey: "check")
		}
		if content != nil{
			aCoder.encode(content, forKey: "content")
		}
		if content2 != nil{
			aCoder.encode(content2, forKey: "content2")
		}
		if content3 != nil{
			aCoder.encode(content3, forKey: "content3")
		}
		if contentTitle1 != nil{
			aCoder.encode(contentTitle1, forKey: "contentTitle1")
		}
		if contentTitle2 != nil{
			aCoder.encode(contentTitle2, forKey: "contentTitle2")
		}
		if contentTitle3 != nil{
			aCoder.encode(contentTitle3, forKey: "contentTitle3")
		}
		if createDate != nil{
			aCoder.encode(createDate, forKey: "createDate")
		}
		if desc != nil{
			aCoder.encode(desc, forKey: "desc")
		}
		if descIcon != nil{
			aCoder.encode(descIcon, forKey: "descIcon")
		}
		if descTitle != nil{
			aCoder.encode(descTitle, forKey: "descTitle")
		}
		if favo != nil{
			aCoder.encode(favo, forKey: "favo")
		}
		if fnCommentNum != nil{
			aCoder.encode(fnCommentNum, forKey: "fnCommentNum")
		}
		if fnCuringNum != nil{
			aCoder.encode(fnCuringNum, forKey: "fnCuringNum")
		}
		if fnDifficultyNum != nil{
			aCoder.encode(fnDifficultyNum, forKey: "fnDifficultyNum")
		}
		if fnGoodsIds != nil{
			aCoder.encode(fnGoodsIds, forKey: "fnGoodsIds")
		}
		if fnHumidityNum != nil{
			aCoder.encode(fnHumidityNum, forKey: "fnHumidityNum")
		}
		if fnIsVph != nil{
			aCoder.encode(fnIsVph, forKey: "fnIsVph")
		}
		if fnVphReadNum != nil{
			aCoder.encode(fnVphReadNum, forKey: "fnVphReadNum")
		}
		if goodsList != nil{
			aCoder.encode(goodsList, forKey: "goodsList")
		}
		if hasAddFavo != nil{
			aCoder.encode(hasAddFavo, forKey: "hasAddFavo")
		}
		if hasAppoint != nil{
			aCoder.encode(hasAppoint, forKey: "hasAppoint")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if keywords != nil{
			aCoder.encode(keywords, forKey: "keywords")
		}
		if newAppoint != nil{
			aCoder.encode(newAppoint, forKey: "newAppoint")
		}
		if newFavo != nil{
			aCoder.encode(newFavo, forKey: "newFavo")
		}
		if newRead != nil{
			aCoder.encode(newRead, forKey: "newRead")
		}
		if order != nil{
			aCoder.encode(order, forKey: "order")
		}
		if pageUrl != nil{
			aCoder.encode(pageUrl, forKey: "pageUrl")
		}
		if pass != nil{
			aCoder.encode(pass, forKey: "pass")
		}
		if pushTime != nil{
			aCoder.encode(pushTime, forKey: "pushTime")
		}
		if read != nil{
			aCoder.encode(read, forKey: "read")
		}
		if share != nil{
			aCoder.encode(share, forKey: "share")
		}
		if sharePageUrl != nil{
			aCoder.encode(sharePageUrl, forKey: "sharePageUrl")
		}
		if smallIcon != nil{
			aCoder.encode(smallIcon, forKey: "smallIcon")
		}
		if title != nil{
			aCoder.encode(title, forKey: "title")
		}
		if top != nil{
			aCoder.encode(top, forKey: "top")
		}
		if video != nil{
			aCoder.encode(video, forKey: "video")
		}
		if videoUrl != nil{
			aCoder.encode(videoUrl, forKey: "videoUrl")
		}

	}

}
