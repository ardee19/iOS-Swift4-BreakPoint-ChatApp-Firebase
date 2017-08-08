//
//  AuthVC.swift
//  BreakPoint
//
//  Created by Super Awesome on 8/7/17.
//  Copyright © 2017 Roy Dimayuga. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func emailSignInPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func googleSignInPressed(_ sender: Any) {
    }
    
    @IBAction func facebookSigninPressed(_ sender: Any) {
    }
    
}
