//
//	Result.swift
//
//	Create by francisvimal on 9/3/2019
//	Copyright © 2019. All rights reserved.


import Foundation


class Result : NSObject, NSCoding{

	var abstractField : String!
	var adxKeywords : String!
	var assetId : Int!
	var byline : String!
	var column : AnyObject!
	var countType : String!
	var desFacet : [String]!
	var emailCount : Int!
	var etaId : Int!
	var geoFacet : String!
	var id : Int!
	var media : [Media1]!
	var nytdsection : String!
	var orgFacet : [String]!
	var perFacet : String!
	var publishedDate : String!
	var section : String!
	var source : String!
	var subsection : String!
	var title : String!
	var type : String!
	var updated : String!
	var uri : String!
	var url : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		abstractField = dictionary["abstract"] as? String
		adxKeywords = dictionary["adx_keywords"] as? String
		assetId = dictionary["asset_id"] as? Int
		byline = dictionary["byline"] as? String
		column = dictionary["column"] as? AnyObject
		countType = dictionary["count_type"] as? String
		desFacet = dictionary["des_facet"] as? [String]
		emailCount = dictionary["email_count"] as? Int
		etaId = dictionary["eta_id"] as? Int
		geoFacet = dictionary["geo_facet"] as? String
		id = dictionary["id"] as? Int
		media = [Media1]()
		if let mediaArray = dictionary["media"] as? [[String:Any]]{
			for dic in mediaArray{
				let value = Media1(fromDictionary: dic)
				media.append(value)
			}
		}
		nytdsection = dictionary["nytdsection"] as? String
		orgFacet = dictionary["org_facet"] as? [String]
		perFacet = dictionary["per_facet"] as? String
		publishedDate = dictionary["published_date"] as? String
		section = dictionary["section"] as? String
		source = dictionary["source"] as? String
		subsection = dictionary["subsection"] as? String
		title = dictionary["title"] as? String
		type = dictionary["type"] as? String
		updated = dictionary["updated"] as? String
		uri = dictionary["uri"] as? String
		url = dictionary["url"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if abstractField != nil{
			dictionary["abstract"] = abstractField
		}
		if adxKeywords != nil{
			dictionary["adx_keywords"] = adxKeywords
		}
		if assetId != nil{
			dictionary["asset_id"] = assetId
		}
		if byline != nil{
			dictionary["byline"] = byline
		}
		if column != nil{
			dictionary["column"] = column
		}
		if countType != nil{
			dictionary["count_type"] = countType
		}
		if desFacet != nil{
			dictionary["des_facet"] = desFacet
		}
		if emailCount != nil{
			dictionary["email_count"] = emailCount
		}
		if etaId != nil{
			dictionary["eta_id"] = etaId
		}
		if geoFacet != nil{
			dictionary["geo_facet"] = geoFacet
		}
		if id != nil{
			dictionary["id"] = id
		}
		if media != nil{
			var dictionaryElements = [[String:Any]]()
			for mediaElement in media {
				dictionaryElements.append(mediaElement.toDictionary())
			}
			dictionary["media"] = dictionaryElements
		}
		if nytdsection != nil{
			dictionary["nytdsection"] = nytdsection
		}
		if orgFacet != nil{
			dictionary["org_facet"] = orgFacet
		}
		if perFacet != nil{
			dictionary["per_facet"] = perFacet
		}
		if publishedDate != nil{
			dictionary["published_date"] = publishedDate
		}
		if section != nil{
			dictionary["section"] = section
		}
		if source != nil{
			dictionary["source"] = source
		}
		if subsection != nil{
			dictionary["subsection"] = subsection
		}
		if title != nil{
			dictionary["title"] = title
		}
		if type != nil{
			dictionary["type"] = type
		}
		if updated != nil{
			dictionary["updated"] = updated
		}
		if uri != nil{
			dictionary["uri"] = uri
		}
		if url != nil{
			dictionary["url"] = url
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         abstractField = aDecoder.decodeObject(forKey: "abstract") as? String
         adxKeywords = aDecoder.decodeObject(forKey: "adx_keywords") as? String
         assetId = aDecoder.decodeObject(forKey: "asset_id") as? Int
         byline = aDecoder.decodeObject(forKey: "byline") as? String
         column = aDecoder.decodeObject(forKey: "column") as? AnyObject
         countType = aDecoder.decodeObject(forKey: "count_type") as? String
         desFacet = aDecoder.decodeObject(forKey: "des_facet") as? [String]
         emailCount = aDecoder.decodeObject(forKey: "email_count") as? Int
         etaId = aDecoder.decodeObject(forKey: "eta_id") as? Int
         geoFacet = aDecoder.decodeObject(forKey: "geo_facet") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         media = aDecoder.decodeObject(forKey :"media") as? [Media1]
         nytdsection = aDecoder.decodeObject(forKey: "nytdsection") as? String
         orgFacet = aDecoder.decodeObject(forKey: "org_facet") as? [String]
         perFacet = aDecoder.decodeObject(forKey: "per_facet") as? String
         publishedDate = aDecoder.decodeObject(forKey: "published_date") as? String
         section = aDecoder.decodeObject(forKey: "section") as? String
         source = aDecoder.decodeObject(forKey: "source") as? String
         subsection = aDecoder.decodeObject(forKey: "subsection") as? String
         title = aDecoder.decodeObject(forKey: "title") as? String
         type = aDecoder.decodeObject(forKey: "type") as? String
         updated = aDecoder.decodeObject(forKey: "updated") as? String
         uri = aDecoder.decodeObject(forKey: "uri") as? String
         url = aDecoder.decodeObject(forKey: "url") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if abstractField != nil{
			aCoder.encode(abstractField, forKey: "abstract")
		}
		if adxKeywords != nil{
			aCoder.encode(adxKeywords, forKey: "adx_keywords")
		}
		if assetId != nil{
			aCoder.encode(assetId, forKey: "asset_id")
		}
		if byline != nil{
			aCoder.encode(byline, forKey: "byline")
		}
		if column != nil{
			aCoder.encode(column, forKey: "column")
		}
		if countType != nil{
			aCoder.encode(countType, forKey: "count_type")
		}
		if desFacet != nil{
			aCoder.encode(desFacet, forKey: "des_facet")
		}
		if emailCount != nil{
			aCoder.encode(emailCount, forKey: "email_count")
		}
		if etaId != nil{
			aCoder.encode(etaId, forKey: "eta_id")
		}
		if geoFacet != nil{
			aCoder.encode(geoFacet, forKey: "geo_facet")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if media != nil{
			aCoder.encode(media, forKey: "media")
		}
		if nytdsection != nil{
			aCoder.encode(nytdsection, forKey: "nytdsection")
		}
		if orgFacet != nil{
			aCoder.encode(orgFacet, forKey: "org_facet")
		}
		if perFacet != nil{
			aCoder.encode(perFacet, forKey: "per_facet")
		}
		if publishedDate != nil{
			aCoder.encode(publishedDate, forKey: "published_date")
		}
		if section != nil{
			aCoder.encode(section, forKey: "section")
		}
		if source != nil{
			aCoder.encode(source, forKey: "source")
		}
		if subsection != nil{
			aCoder.encode(subsection, forKey: "subsection")
		}
		if title != nil{
			aCoder.encode(title, forKey: "title")
		}
		if type != nil{
			aCoder.encode(type, forKey: "type")
		}
		if updated != nil{
			aCoder.encode(updated, forKey: "updated")
		}
		if uri != nil{
			aCoder.encode(uri, forKey: "uri")
		}
		if url != nil{
			aCoder.encode(url, forKey: "url")
		}

	}

}
