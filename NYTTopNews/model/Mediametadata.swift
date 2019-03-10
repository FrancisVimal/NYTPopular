//
//	Media-metadata.swift
//
//	Create by francisvimal on 9/3/2019
//	Copyright © 2019. All rights reserved.


import Foundation


class Mediametadata : NSObject, NSCoding
{

	var format : String!
	var height : Int!
	var url : String!
	var width : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		format = dictionary["format"] as? String
		height = dictionary["height"] as? Int
		url = dictionary["url"] as? String
		width = dictionary["width"] as? Int
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if format != nil{
			dictionary["format"] = format
		}
		if height != nil{
			dictionary["height"] = height
		}
		if url != nil{
			dictionary["url"] = url
		}
		if width != nil{
			dictionary["width"] = width
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         format = aDecoder.decodeObject(forKey: "format") as? String
         height = aDecoder.decodeObject(forKey: "height") as? Int
         url = aDecoder.decodeObject(forKey: "url") as? String
         width = aDecoder.decodeObject(forKey: "width") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if format != nil{
			aCoder.encode(format, forKey: "format")
		}
		if height != nil{
			aCoder.encode(height, forKey: "height")
		}
		if url != nil{
			aCoder.encode(url, forKey: "url")
		}
		if width != nil{
			aCoder.encode(width, forKey: "width")
		}

	}

}
