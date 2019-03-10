
//
//  CustomUIDesigns.swift
//  NYTTopNews
//
//  Created by francisvimal on 09/03/19.
//  Copyright © 2019 francisvimal. All rights reserved.
//
import Foundation
import UIKit







@IBDesignable class ImageBorderView : UIImageView {
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            
            
        }
    }
}


    




