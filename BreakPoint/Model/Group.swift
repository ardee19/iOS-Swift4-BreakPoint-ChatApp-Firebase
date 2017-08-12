//
//  Group.swift
//  BreakPoint
//
//  Created by Super Awesome on 8/11/17.
//  Copyright © 2017 Roy Dimayuga. All rights reserved.
//

import Foundation

class Group {
    
    public private(set) var title: String
    public private(set) var groupDescription: String
    public private(set) var key: String
    public private(set) var members: [String]
    public private(set) var memberCount: Int
    
    init(title: String, description: String, key: String, members: [String], memberCount: Int ) {
        self.title = title
        self.groupDescription = description
        self.key = key
        self.members = members
        self.memberCount = memberCount
    }
}
