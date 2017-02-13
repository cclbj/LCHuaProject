//
//	Category.swift
//
//	Create by 臣臣 李 on 13/2/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class Category : NSObject, NSCoding{

	var createDate : String!
	var enName : String!
	var id : String!
	var img : String!
	var name : String!
	var order : Int!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		createDate = json["createDate"].stringValue
		enName = json["enName"].stringValue
		id = json["id"].stringValue
		img = json["img"].stringValue
		name = json["name"].stringValue
		order = json["order"].intValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if createDate != nil{
			dictionary["createDate"] = createDate
		}
		if enName != nil{
			dictionary["enName"] = enName
		}
		if id != nil{
			dictionary["id"] = id
		}
		if img != nil{
			dictionary["img"] = img
		}
		if name != nil{
			dictionary["name"] = name
		}
		if order != nil{
			dictionary["order"] = order
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         createDate = aDecoder.decodeObject(forKey: "createDate") as? String
         enName = aDecoder.decodeObject(forKey: "enName") as? String
         id = aDecoder.decodeObject(forKey: "id") as? String
         img = aDecoder.decodeObject(forKey: "img") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String
         order = aDecoder.decodeObject(forKey: "order") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if createDate != nil{
			aCoder.encode(createDate, forKey: "createDate")
		}
		if enName != nil{
			aCoder.encode(enName, forKey: "enName")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if img != nil{
			aCoder.encode(img, forKey: "img")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if order != nil{
			aCoder.encode(order, forKey: "order")
		}

	}

}
