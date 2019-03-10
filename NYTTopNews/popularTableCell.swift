//
//  popularTableCell.swift
//  NYTTopNews
//
//  Created by francisvimal on 10/03/19.
//  Copyright © 2019 francisvimal. All rights reserved.
//

import UIKit

class popularTableCell: UITableViewCell {
    
    // popular table view components
    @IBOutlet weak var popImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var byLine: UILabel!
    @IBOutlet weak var date: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
