//
//  PostCell.swift
//  Parstagram
//
//  Created by Gustavo Cordido on 11/15/19.
//  Copyright © 2019 gustavocordido. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var username_label: UILabel!
    @IBOutlet weak var caption_label: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
