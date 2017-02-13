//
//	RootClass.swift
//
//	Create by 臣臣 李 on 13/2/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class TopicIndexModel : NSObject, NSCoding{

	var msg : String!
	var result : [Result]!
	var status : Bool!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		msg = json["msg"].stringValue
		result = [Result]()
		let resultArray = json["result"].arrayValue
		for resultJson in resultArray{
			let value = Result(fromJson: resultJson)
			result.append(value)
		}
		status = json["status"].boolValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if msg != nil{
			dictionary["msg"] = msg
		}
		if result != nil{
			var dictionaryElements = [[String:Any]]()
			for resultElement in result {
				dictionaryElements.append(resultElement.toDictionary())
			}
			dictionary["result"] = dictionaryElements
		}
		if status != nil{
			dictionary["status"] = status
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         msg = aDecoder.decodeObject(forKey: "msg") as? String
         result = aDecoder.decodeObject(forKey: "result") as? [Result]
         status = aDecoder.decodeObject(forKey: "status") as? Bool

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if msg != nil{
			aCoder.encode(msg, forKey: "msg")
		}
		if result != nil{
			aCoder.encode(result, forKey: "result")
		}
		if status != nil{
			aCoder.encode(status, forKey: "status")
		}

	}

}
