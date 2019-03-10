//
//	NYTimesPopular.swift
//
//	Create by francisvimal on 9/3/2019
//	Copyright © 2019. All rights reserved.


import Foundation


class NYTimesPopular : NSObject, NSCoding{

	var copyright : String!
	var numResults : Int!
	var results : [Result]!
	var status : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		copyright = dictionary["copyright"] as? String
		numResults = dictionary["num_results"] as? Int
		results = [Result]()
		if let resultsArray = dictionary["results"] as? [[String:Any]]{
			for dic in resultsArray{
				let value = Result(fromDictionary: dic)
				results.append(value)
			}
		}
		status = dictionary["status"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if copyright != nil{
			dictionary["copyright"] = copyright
		}
		if numResults != nil{
			dictionary["num_results"] = numResults
		}
		if results != nil{
			var dictionaryElements = [[String:Any]]()
			for resultsElement in results {
				dictionaryElements.append(resultsElement.toDictionary())
			}
			dictionary["results"] = dictionaryElements
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
         copyright = aDecoder.decodeObject(forKey: "copyright") as? String
         numResults = aDecoder.decodeObject(forKey: "num_results") as? Int
         results = aDecoder.decodeObject(forKey :"results") as? [Result]
         status = aDecoder.decodeObject(forKey: "status") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if copyright != nil{
			aCoder.encode(copyright, forKey: "copyright")
		}
		if numResults != nil{
			aCoder.encode(numResults, forKey: "num_results")
		}
		if results != nil{
			aCoder.encode(results, forKey: "results")
		}
		if status != nil{
			aCoder.encode(status, forKey: "status")
		}

	}

}
