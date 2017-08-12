//
//  GroupFeedCell.swift
//  BreakPoint
//
//  Created by Super Awesome on 8/11/17.
//  Copyright © 2017 Roy Dimayuga. All rights reserved.
//

import UIKit

class GroupFeedCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
}
