//
//  Utils.swift
//  NYTTopNews
//
//  Created by francisvimal on 09/03/19.
//  Copyright © 2019 francisvimal. All rights reserved.
//

import UIKit
import SVProgressHUD

class Utils: NSObject {
    
    func showProgress() {
        SVProgressHUD.setDefaultMaskType(SVProgressHUDMaskType.black)
        SVProgressHUD.show()
        
    }
    
    func hideProgress() {
        SVProgressHUD.dismiss()
    }
    
    func showAlert(text:String, view: UIViewController) {
        let alertController = UIAlertController(title: "Oops!!!", message: text, preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(defaultAction)
        
        view.present(alertController, animated: true, completion: nil)
    }
}
