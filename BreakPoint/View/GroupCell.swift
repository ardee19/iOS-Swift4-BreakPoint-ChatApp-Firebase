//
//  GroupCell.swift
//  BreakPoint
//
//  Created by Super Awesome on 8/11/17.
//  Copyright © 2017 Roy Dimayuga. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {
    
    // Outlets
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var groupDescriptionLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!
    
    func configureCell(title: String, description: String, memberCount: Int) {
        self.groupTitleLbl.text = title
        self.groupDescriptionLbl.text = description
        self.memberCountLbl.text = "\(memberCount) members"
    }

}
