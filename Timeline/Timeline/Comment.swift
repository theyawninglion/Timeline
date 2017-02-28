//
//  Comment.swift
//  Timeline
//
//  Created by Taylor Phillips on 2/27/17.
//  Copyright © 2017 Taylor Phillips. All rights reserved.
//

import Foundation
import UIKit

class Comment {
    
    let text: String
    let timestamp:  Date
    let post: Post?
    
    init(text: String, timestamp: Date = Date(), post: Post){
        self.text = text
        self.timestamp = timestamp
        self.post = post
    }
}

