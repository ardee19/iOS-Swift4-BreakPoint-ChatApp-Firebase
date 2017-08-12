//
//  GroupFeedVC.swift
//  BreakPoint
//
//  Created by Super Awesome on 8/11/17.
//  Copyright © 2017 Roy Dimayuga. All rights reserved.
//

import UIKit

class GroupFeedVC: UIViewController {

    // Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var membersLbl: UILabel!
    @IBOutlet weak var sendBtnView: UIView!
    @IBOutlet weak var messageTxtField: InsetTextField!
    @IBOutlet weak var sendBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sendBtnView.bindToKeyboard()
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendPressed(_ sender: Any) {
    }
    
}
