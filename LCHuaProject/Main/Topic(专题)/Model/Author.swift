//
//	Author.swift
//
//	Create by 臣臣 李 on 13/2/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class Author : NSObject, NSCoding{

	var articleCount : Int!
	var attentionCount : Int!
	var attentioned : Bool!
	var auth : String!
	var bbsCount : Int!
	var birthday : String!
	var championM : Bool!
	var championW : Bool!
	var championY : Bool!
	var city : String!
	var content : String!
	var countryCode : String!
	var createDate : String!
	var dingYue : Bool!
	var email : String!
	var experience : Int!
	var fansCount : Int!
	var gag : Bool!
	var gagBeginDate : String!
	var gagEndDate : String!
	var headImg : String!
	var id : String!
	var identity : String!
	var imQQ : String!
	var imWeibo : String!
	var imWeixin : String!
	var initSubscibeNum : Int!
	var integral : Int!
	var isAddress : Int!
	var jPUSHCODE : String!
	var jian : Bool!
	var level : Int!
	var listContent : [AnyObject]!
	var loginDate : String!
	var market : String!
	var messageCount : Int!
	var mobile : String!
	var mySubscibeNum : Int!
	var newAuth : String!
	var newPassword : String!
	var occSelected : Int!
	var occupation : String!
	var password : String!
	var realName : String!
	var sex : String!
	var speciality : String!
	var state : String!
	var subscibeNum : Int!
	var terminal : String!
	var token : String!
	var uplevelPercent : String!
	var userName : String!
	var validDateM : String!
	var validDateW : String!
	var validDateY : String!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		articleCount = json["articleCount"].intValue
		attentionCount = json["attentionCount"].intValue
		attentioned = json["attentioned"].boolValue
		auth = json["auth"].stringValue
		bbsCount = json["bbsCount"].intValue
		birthday = json["birthday"].stringValue
		championM = json["championM"].boolValue
		championW = json["championW"].boolValue
		championY = json["championY"].boolValue
		city = json["city"].stringValue
		content = json["content"].stringValue
		countryCode = json["countryCode"].stringValue
		createDate = json["createDate"].stringValue
		dingYue = json["dingYue"].boolValue
		email = json["email"].stringValue
		experience = json["experience"].intValue
		fansCount = json["fansCount"].intValue
		gag = json["gag"].boolValue
		gagBeginDate = json["gagBeginDate"].stringValue
		gagEndDate = json["gagEndDate"].stringValue
		headImg = json["headImg"].stringValue
		id = json["id"].stringValue
		identity = json["identity"].stringValue
		imQQ = json["imQQ"].stringValue
		imWeibo = json["imWeibo"].stringValue
		imWeixin = json["imWeixin"].stringValue
		initSubscibeNum = json["initSubscibeNum"].intValue
		integral = json["integral"].intValue
		isAddress = json["isAddress"].intValue
		jPUSHCODE = json["j_PUSH_CODE"].stringValue
		jian = json["jian"].boolValue
		level = json["level"].intValue
		listContent = [AnyObject]()
		let listContentArray = json["listContent"].arrayValue
		for listContentJson in listContentArray{
			listContent.append(listContentJson.stringValue as AnyObject)
		}
		loginDate = json["loginDate"].stringValue
		market = json["market"].stringValue
		messageCount = json["messageCount"].intValue
		mobile = json["mobile"].stringValue
		mySubscibeNum = json["mySubscibeNum"].intValue
		newAuth = json["newAuth"].stringValue
		newPassword = json["newPassword"].stringValue
		occSelected = json["occSelected"].intValue
		occupation = json["occupation"].stringValue
		password = json["password"].stringValue
		realName = json["realName"].stringValue
		sex = json["sex"].stringValue
		speciality = json["speciality"].stringValue
		state = json["state"].stringValue
		subscibeNum = json["subscibeNum"].intValue
		terminal = json["terminal"].stringValue
		token = json["token"].stringValue
		uplevelPercent = json["uplevelPercent"].stringValue
		userName = json["userName"].stringValue
		validDateM = json["validDate_M"].stringValue
		validDateW = json["validDate_W"].stringValue
		validDateY = json["validDate_Y"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if articleCount != nil{
			dictionary["articleCount"] = articleCount
		}
		if attentionCount != nil{
			dictionary["attentionCount"] = attentionCount
		}
		if attentioned != nil{
			dictionary["attentioned"] = attentioned
		}
		if auth != nil{
			dictionary["auth"] = auth
		}
		if bbsCount != nil{
			dictionary["bbsCount"] = bbsCount
		}
		if birthday != nil{
			dictionary["birthday"] = birthday
		}
		if championM != nil{
			dictionary["championM"] = championM
		}
		if championW != nil{
			dictionary["championW"] = championW
		}
		if championY != nil{
			dictionary["championY"] = championY
		}
		if city != nil{
			dictionary["city"] = city
		}
		if content != nil{
			dictionary["content"] = content
		}
		if countryCode != nil{
			dictionary["countryCode"] = countryCode
		}
		if createDate != nil{
			dictionary["createDate"] = createDate
		}
		if dingYue != nil{
			dictionary["dingYue"] = dingYue
		}
		if email != nil{
			dictionary["email"] = email
		}
		if experience != nil{
			dictionary["experience"] = experience
		}
		if fansCount != nil{
			dictionary["fansCount"] = fansCount
		}
		if gag != nil{
			dictionary["gag"] = gag
		}
		if gagBeginDate != nil{
			dictionary["gagBeginDate"] = gagBeginDate
		}
		if gagEndDate != nil{
			dictionary["gagEndDate"] = gagEndDate
		}
		if headImg != nil{
			dictionary["headImg"] = headImg
		}
		if id != nil{
			dictionary["id"] = id
		}
		if identity != nil{
			dictionary["identity"] = identity
		}
		if imQQ != nil{
			dictionary["imQQ"] = imQQ
		}
		if imWeibo != nil{
			dictionary["imWeibo"] = imWeibo
		}
		if imWeixin != nil{
			dictionary["imWeixin"] = imWeixin
		}
		if initSubscibeNum != nil{
			dictionary["initSubscibeNum"] = initSubscibeNum
		}
		if integral != nil{
			dictionary["integral"] = integral
		}
		if isAddress != nil{
			dictionary["isAddress"] = isAddress
		}
		if jPUSHCODE != nil{
			dictionary["j_PUSH_CODE"] = jPUSHCODE
		}
		if jian != nil{
			dictionary["jian"] = jian
		}
		if level != nil{
			dictionary["level"] = level
		}
		if listContent != nil{
			dictionary["listContent"] = listContent
		}
		if loginDate != nil{
			dictionary["loginDate"] = loginDate
		}
		if market != nil{
			dictionary["market"] = market
		}
		if messageCount != nil{
			dictionary["messageCount"] = messageCount
		}
		if mobile != nil{
			dictionary["mobile"] = mobile
		}
		if mySubscibeNum != nil{
			dictionary["mySubscibeNum"] = mySubscibeNum
		}
		if newAuth != nil{
			dictionary["newAuth"] = newAuth
		}
		if newPassword != nil{
			dictionary["newPassword"] = newPassword
		}
		if occSelected != nil{
			dictionary["occSelected"] = occSelected
		}
		if occupation != nil{
			dictionary["occupation"] = occupation
		}
		if password != nil{
			dictionary["password"] = password
		}
		if realName != nil{
			dictionary["realName"] = realName
		}
		if sex != nil{
			dictionary["sex"] = sex
		}
		if speciality != nil{
			dictionary["speciality"] = speciality
		}
		if state != nil{
			dictionary["state"] = state
		}
		if subscibeNum != nil{
			dictionary["subscibeNum"] = subscibeNum
		}
		if terminal != nil{
			dictionary["terminal"] = terminal
		}
		if token != nil{
			dictionary["token"] = token
		}
		if uplevelPercent != nil{
			dictionary["uplevelPercent"] = uplevelPercent
		}
		if userName != nil{
			dictionary["userName"] = userName
		}
		if validDateM != nil{
			dictionary["validDate_M"] = validDateM
		}
		if validDateW != nil{
			dictionary["validDate_W"] = validDateW
		}
		if validDateY != nil{
			dictionary["validDate_Y"] = validDateY
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         articleCount = aDecoder.decodeObject(forKey: "articleCount") as? Int
         attentionCount = aDecoder.decodeObject(forKey: "attentionCount") as? Int
         attentioned = aDecoder.decodeObject(forKey: "attentioned") as? Bool
         auth = aDecoder.decodeObject(forKey: "auth") as? String
         bbsCount = aDecoder.decodeObject(forKey: "bbsCount") as? Int
         birthday = aDecoder.decodeObject(forKey: "birthday") as? String
         championM = aDecoder.decodeObject(forKey: "championM") as? Bool
         championW = aDecoder.decodeObject(forKey: "championW") as? Bool
         championY = aDecoder.decodeObject(forKey: "championY") as? Bool
         city = aDecoder.decodeObject(forKey: "city") as? String
         content = aDecoder.decodeObject(forKey: "content") as? String
         countryCode = aDecoder.decodeObject(forKey: "countryCode") as? String
         createDate = aDecoder.decodeObject(forKey: "createDate") as? String
         dingYue = aDecoder.decodeObject(forKey: "dingYue") as? Bool
         email = aDecoder.decodeObject(forKey: "email") as? String
         experience = aDecoder.decodeObject(forKey: "experience") as? Int
         fansCount = aDecoder.decodeObject(forKey: "fansCount") as? Int
         gag = aDecoder.decodeObject(forKey: "gag") as? Bool
         gagBeginDate = aDecoder.decodeObject(forKey: "gagBeginDate") as? String
         gagEndDate = aDecoder.decodeObject(forKey: "gagEndDate") as? String
         headImg = aDecoder.decodeObject(forKey: "headImg") as? String
         id = aDecoder.decodeObject(forKey: "id") as? String
         identity = aDecoder.decodeObject(forKey: "identity") as? String
         imQQ = aDecoder.decodeObject(forKey: "imQQ") as? String
         imWeibo = aDecoder.decodeObject(forKey: "imWeibo") as? String
         imWeixin = aDecoder.decodeObject(forKey: "imWeixin") as? String
         initSubscibeNum = aDecoder.decodeObject(forKey: "initSubscibeNum") as? Int
         integral = aDecoder.decodeObject(forKey: "integral") as? Int
         isAddress = aDecoder.decodeObject(forKey: "isAddress") as? Int
         jPUSHCODE = aDecoder.decodeObject(forKey: "j_PUSH_CODE") as? String
         jian = aDecoder.decodeObject(forKey: "jian") as? Bool
         level = aDecoder.decodeObject(forKey: "level") as? Int
         listContent = aDecoder.decodeObject(forKey: "listContent") as? [AnyObject]
         loginDate = aDecoder.decodeObject(forKey: "loginDate") as? String
         market = aDecoder.decodeObject(forKey: "market") as? String
         messageCount = aDecoder.decodeObject(forKey: "messageCount") as? Int
         mobile = aDecoder.decodeObject(forKey: "mobile") as? String
         mySubscibeNum = aDecoder.decodeObject(forKey: "mySubscibeNum") as? Int
         newAuth = aDecoder.decodeObject(forKey: "newAuth") as? String
         newPassword = aDecoder.decodeObject(forKey: "newPassword") as? String
         occSelected = aDecoder.decodeObject(forKey: "occSelected") as? Int
         occupation = aDecoder.decodeObject(forKey: "occupation") as? String
         password = aDecoder.decodeObject(forKey: "password") as? String
         realName = aDecoder.decodeObject(forKey: "realName") as? String
         sex = aDecoder.decodeObject(forKey: "sex") as? String
         speciality = aDecoder.decodeObject(forKey: "speciality") as? String
         state = aDecoder.decodeObject(forKey: "state") as? String
         subscibeNum = aDecoder.decodeObject(forKey: "subscibeNum") as? Int
         terminal = aDecoder.decodeObject(forKey: "terminal") as? String
         token = aDecoder.decodeObject(forKey: "token") as? String
         uplevelPercent = aDecoder.decodeObject(forKey: "uplevelPercent") as? String
         userName = aDecoder.decodeObject(forKey: "userName") as? String
         validDateM = aDecoder.decodeObject(forKey: "validDate_M") as? String
         validDateW = aDecoder.decodeObject(forKey: "validDate_W") as? String
         validDateY = aDecoder.decodeObject(forKey: "validDate_Y") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if articleCount != nil{
			aCoder.encode(articleCount, forKey: "articleCount")
		}
		if attentionCount != nil{
			aCoder.encode(attentionCount, forKey: "attentionCount")
		}
		if attentioned != nil{
			aCoder.encode(attentioned, forKey: "attentioned")
		}
		if auth != nil{
			aCoder.encode(auth, forKey: "auth")
		}
		if bbsCount != nil{
			aCoder.encode(bbsCount, forKey: "bbsCount")
		}
		if birthday != nil{
			aCoder.encode(birthday, forKey: "birthday")
		}
		if championM != nil{
			aCoder.encode(championM, forKey: "championM")
		}
		if championW != nil{
			aCoder.encode(championW, forKey: "championW")
		}
		if championY != nil{
			aCoder.encode(championY, forKey: "championY")
		}
		if city != nil{
			aCoder.encode(city, forKey: "city")
		}
		if content != nil{
			aCoder.encode(content, forKey: "content")
		}
		if countryCode != nil{
			aCoder.encode(countryCode, forKey: "countryCode")
		}
		if createDate != nil{
			aCoder.encode(createDate, forKey: "createDate")
		}
		if dingYue != nil{
			aCoder.encode(dingYue, forKey: "dingYue")
		}
		if email != nil{
			aCoder.encode(email, forKey: "email")
		}
		if experience != nil{
			aCoder.encode(experience, forKey: "experience")
		}
		if fansCount != nil{
			aCoder.encode(fansCount, forKey: "fansCount")
		}
		if gag != nil{
			aCoder.encode(gag, forKey: "gag")
		}
		if gagBeginDate != nil{
			aCoder.encode(gagBeginDate, forKey: "gagBeginDate")
		}
		if gagEndDate != nil{
			aCoder.encode(gagEndDate, forKey: "gagEndDate")
		}
		if headImg != nil{
			aCoder.encode(headImg, forKey: "headImg")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if identity != nil{
			aCoder.encode(identity, forKey: "identity")
		}
		if imQQ != nil{
			aCoder.encode(imQQ, forKey: "imQQ")
		}
		if imWeibo != nil{
			aCoder.encode(imWeibo, forKey: "imWeibo")
		}
		if imWeixin != nil{
			aCoder.encode(imWeixin, forKey: "imWeixin")
		}
		if initSubscibeNum != nil{
			aCoder.encode(initSubscibeNum, forKey: "initSubscibeNum")
		}
		if integral != nil{
			aCoder.encode(integral, forKey: "integral")
		}
		if isAddress != nil{
			aCoder.encode(isAddress, forKey: "isAddress")
		}
		if jPUSHCODE != nil{
			aCoder.encode(jPUSHCODE, forKey: "j_PUSH_CODE")
		}
		if jian != nil{
			aCoder.encode(jian, forKey: "jian")
		}
		if level != nil{
			aCoder.encode(level, forKey: "level")
		}
		if listContent != nil{
			aCoder.encode(listContent, forKey: "listContent")
		}
		if loginDate != nil{
			aCoder.encode(loginDate, forKey: "loginDate")
		}
		if market != nil{
			aCoder.encode(market, forKey: "market")
		}
		if messageCount != nil{
			aCoder.encode(messageCount, forKey: "messageCount")
		}
		if mobile != nil{
			aCoder.encode(mobile, forKey: "mobile")
		}
		if mySubscibeNum != nil{
			aCoder.encode(mySubscibeNum, forKey: "mySubscibeNum")
		}
		if newAuth != nil{
			aCoder.encode(newAuth, forKey: "newAuth")
		}
		if newPassword != nil{
			aCoder.encode(newPassword, forKey: "newPassword")
		}
		if occSelected != nil{
			aCoder.encode(occSelected, forKey: "occSelected")
		}
		if occupation != nil{
			aCoder.encode(occupation, forKey: "occupation")
		}
		if password != nil{
			aCoder.encode(password, forKey: "password")
		}
		if realName != nil{
			aCoder.encode(realName, forKey: "realName")
		}
		if sex != nil{
			aCoder.encode(sex, forKey: "sex")
		}
		if speciality != nil{
			aCoder.encode(speciality, forKey: "speciality")
		}
		if state != nil{
			aCoder.encode(state, forKey: "state")
		}
		if subscibeNum != nil{
			aCoder.encode(subscibeNum, forKey: "subscibeNum")
		}
		if terminal != nil{
			aCoder.encode(terminal, forKey: "terminal")
		}
		if token != nil{
			aCoder.encode(token, forKey: "token")
		}
		if uplevelPercent != nil{
			aCoder.encode(uplevelPercent, forKey: "uplevelPercent")
		}
		if userName != nil{
			aCoder.encode(userName, forKey: "userName")
		}
		if validDateM != nil{
			aCoder.encode(validDateM, forKey: "validDate_M")
		}
		if validDateW != nil{
			aCoder.encode(validDateW, forKey: "validDate_W")
		}
		if validDateY != nil{
			aCoder.encode(validDateY, forKey: "validDate_Y")
		}

	}

}
