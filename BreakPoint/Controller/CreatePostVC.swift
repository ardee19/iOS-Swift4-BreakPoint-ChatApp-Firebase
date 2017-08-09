//
//  CreatePostVC.swift
//  BreakPoint
//
//  Created by Super Awesome on 8/8/17.
//  Copyright © 2017 Roy Dimayuga. All rights reserved.
//

import UIKit
import Firebase

class CreatePostVC: UIViewController {

    // Outlets
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var sendBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.delegate = self
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        let message:String! = textView.text
        if message != nil && message != "Say Something Here...." && message != "" {
            sendBtn.isEnabled = false
            DataService.instance.uploadPost(withMessage: message, forUID: (Auth.auth().currentUser?.uid)!, withGroupKey: nil, sendComplete: { (isComplete) in
                
                if isComplete {
                    self.sendBtn.isEnabled = true
                    self.dismiss(animated: true, completion: nil)
                } else {
                    self.sendBtn.isEnabled = true
                    print("RD: Error posting")
                }
            })
        }
        
        
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension CreatePostVC: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
}
