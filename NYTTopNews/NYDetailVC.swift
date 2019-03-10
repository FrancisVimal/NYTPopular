//
//  NYDetailVC.swift
//  NYTTopNews
//
//  Created by francisvimal on 10/03/19.
//  Copyright © 2019 francisvimal. All rights reserved.
//

import UIKit
import SDWebImage

class NYDetailVC: UIViewController {
    
    var imageURL:String!
    var descriptionText:String!
    
    @IBOutlet weak var detailmageView: UIImageView!
    @IBOutlet weak var descriptionetxtLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        detailmageView.sd_setImage(with: URL(string: imageURL))
        descriptionetxtLabel.text = descriptionText

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backAction(_ sender:UIButton)
    {
        self.navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
