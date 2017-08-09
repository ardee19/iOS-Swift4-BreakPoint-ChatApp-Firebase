//
//  DataService.swift
//  BreakPoint
//
//  Created by Super Awesome on 8/7/17.
//  Copyright © 2017 Roy Dimayuga. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()

class DataService {
    static let instance = DataService()
    
    public private(set) var REF_BASE = DB_BASE
    public private(set) var REF_USERS = DB_BASE.child("users")
    public private(set) var REF_GROUPS = DB_BASE.child("groups")
    public private(set) var REF_FEED = DB_BASE.child("feed")
    
    func createDBUser(uid: String, userData: Dictionary<String,Any>) {
        REF_USERS.child(uid).updateChildValues(userData)
    }
    
    func uploadPost(withMessage message: String, forUID uid: String, withGroupKey groupKey: String?, sendComplete: @escaping (_ status: Bool) -> () ) {
        
        if groupKey != nil {
            // send to group ref
        } else {
            REF_FEED.childByAutoId().updateChildValues(["contetn": message, "senderId": uid])
            sendComplete(true)
        }
    }
    
}
