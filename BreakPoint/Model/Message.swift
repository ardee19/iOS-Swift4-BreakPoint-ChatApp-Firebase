//
//  Message.swift
//  BreakPoint
//
//  Created by Super Awesome on 8/9/17.
//  Copyright © 2017 Roy Dimayuga. All rights reserved.
//

import Foundation

class Message {
    public private(set) var content: String
    public private(set) var senderId: String
    
    init(content: String, senderId: String) {
        self.content = content
        self.senderId = senderId
    }
}
