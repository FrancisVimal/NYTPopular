//
//	Media.swift
//
//	Create by francisvimal on 9/3/2019
//	Copyright © 2019. All rights reserved.


import Foundation


class Media1 : NSObject, NSCoding
{

	var approvedForSyndication : Int!
	var caption : String!
	var copyright : String!
	var mediametadata : [Mediametadata]!
	var subtype : String!
	var type : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		approvedForSyndication = dictionary["approved_for_syndication"] as? Int
		caption = dictionary["caption"] as? String
		copyright = dictionary["copyright"] as? String
		mediametadata = [Mediametadata]()
		if let mediametadataArray = dictionary["media-metadata"] as? [[String:Any]]{
			for dic in mediametadataArray{
				let value = Mediametadata(fromDictionary: dic)
				mediametadata.append(value)
			}
		}
		subtype = dictionary["subtype"] as? String
		type = dictionary["type"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if approvedForSyndication != nil{
			dictionary["approved_for_syndication"] = approvedForSyndication
		}
		if caption != nil{
			dictionary["caption"] = caption
		}
		if copyright != nil{
			dictionary["copyright"] = copyright
		}
		if mediametadata != nil{
			var dictionaryElements = [[String:Any]]()
			for mediametadataElement in mediametadata {
				dictionaryElements.append(mediametadataElement.toDictionary())
			}
			dictionary["media-metadata"] = dictionaryElements
		}
		if subtype != nil{
			dictionary["subtype"] = subtype
		}
		if type != nil{
			dictionary["type"] = type
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         approvedForSyndication = aDecoder.decodeObject(forKey: "approved_for_syndication") as? Int
         caption = aDecoder.decodeObject(forKey: "caption") as? String
         copyright = aDecoder.decodeObject(forKey: "copyright") as? String
         mediametadata = aDecoder.decodeObject(forKey :"media-metadata") as? [Mediametadata]
         subtype = aDecoder.decodeObject(forKey: "subtype") as? String
         type = aDecoder.decodeObject(forKey: "type") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if approvedForSyndication != nil{
			aCoder.encode(approvedForSyndication, forKey: "approved_for_syndication")
		}
		if caption != nil{
			aCoder.encode(caption, forKey: "caption")
		}
		if copyright != nil{
			aCoder.encode(copyright, forKey: "copyright")
		}
		if mediametadata != nil{
			aCoder.encode(mediametadata, forKey: "media-metadata")
		}
		if subtype != nil{
			aCoder.encode(subtype, forKey: "subtype")
		}
		if type != nil{
			aCoder.encode(type, forKey: "type")
		}

	}

}
