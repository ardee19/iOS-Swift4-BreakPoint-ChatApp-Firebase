//
//  LoginVC.swift
//  BreakPoint
//
//  Created by Super Awesome on 8/7/17.
//  Copyright © 2017 Roy Dimayuga. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    // Outlets
    @IBOutlet weak var emailField: InsetTextField!
    @IBOutlet weak var passwordField: InsetTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailField.delegate = self
        passwordField.delegate = self
    }

    @IBAction func signInPressed(_ sender: Any) {
        
        let email = emailField.text!
        let password = passwordField.text!

        if email != "" && password != ""  {
            AuthService.instance.loginUser(withEmail: email, andPassword: password, loginComplete: { (success, loginError) in
                
                if success {
                    print("RD: Login Successful")
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print(String(describing: loginError?.localizedDescription))
                    AuthService.instance.registerUser(withEmail: email, andPassword: password, userCreationComplete: { (success, error) in
                        if success {
                            AuthService.instance.loginUser(withEmail: email, andPassword: password, loginComplete: { (success, _) in
                                print("RD: Registration Successful")
                                self.dismiss(animated: true, completion: nil)
                            })
                        } else {
                            print(error?.localizedDescription as Any)
                        }
                    })
                }
                
            })
        }
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension LoginVC: UITextFieldDelegate {
    
    
}
