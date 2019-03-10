//
//  services.swift
//  NYTTopNews
//
//  Created by francisvimal on 09/03/19.
//  Copyright © 2019 francisvimal. All rights reserved.
//

import Foundation
import Alamofire

class Services: NSObject {
    
    // service wrapper
    
    var onComplete: ((_ result: [String: Any])->())?
    var onError: ((_ message: String)->())?
    let utils = Utils()
   
    func callServiceGet(_ data: [String:Any], _ route: String)
    {
        // shows indicator
           utils.showProgress()
        // using alamofire request
           Alamofire.request(NYTURLs.baseURL).responseJSON{ response in
            self.utils.hideProgress()
            guard response.result.error == nil else {
                print(response.result.error!)
                self.onError?("something went wrong")
                return
            }
            
            
            if let json = response.result.value as? [String: Any] {
                print("JSON: \(json)") // serialized json response
                guard  json["error"] == nil else{
                    if let error = json["error"] as? [String:Any] {
                        print(error.map { $0.1 }[0])
                        
                        let sArray = error.map { $0.1 }[0] as! NSArray
                        print(sArray[0] as! String)
                        self.onError?(sArray[0] as! String)
                    }
                    if let error = json["error"] as? String {
                        print(error)
                        self.onError?(error)
                    }
                    return
                }
                self.onComplete?(json)
            }
        }
        
    }
    
    
}

