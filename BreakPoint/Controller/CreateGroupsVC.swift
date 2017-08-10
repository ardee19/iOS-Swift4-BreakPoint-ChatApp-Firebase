//
//  CreateGroupsVC.swift
//  BreakPoint
//
//  Created by Super Awesome on 8/10/17.
//  Copyright © 2017 Roy Dimayuga. All rights reserved.
//

import UIKit

class CreateGroupsVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var titleTextField: InsetTextField!
    @IBOutlet weak var descriptionTextField: InsetTextField!
    @IBOutlet weak var emailSearchTextField: InsetTextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var groupMemberLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func donePressed(_ sender: Any) {
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
    }
    
}
