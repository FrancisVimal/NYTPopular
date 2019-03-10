
//
//  mostPopularVM.swift
//  NYTTopNews
//
//  Created by francisvimal on 09/03/19.
//  Copyright © 2019 francisvimal. All rights reserved.
//
import Foundation


class mostPopularVM:NYTPopularProtocol
{
// closure functions for data access from api
    var onGetPopularSuccess: ((_ result: NYTimesPopular)->())?
    var onGetPopularError: ((_ result: String)->())?
  
    var api = Services()
  //define protocolfunction that access the data using Alamofire Library
    func getPopular()
    {
        api.callServiceGet(["" : ""], "")
        api.onComplete = {result in
            let model = NYTimesPopular(fromDictionary: result)
            self.onGetPopularSuccess?(model)
            
               }
    }
    
    
    
    
}
